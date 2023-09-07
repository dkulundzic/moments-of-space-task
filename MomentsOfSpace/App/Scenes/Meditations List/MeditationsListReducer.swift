import Foundation
import MomentsOfSpaceModel
import MomentsOfSpaceNetworking
import ComposableArchitecture

final class MeditationsListReducer {
    struct State: Equatable {
        var isLoading = false
        var meditations: IdentifiedArrayOf<Meditation> = []
    }

    enum Action {
        case onFirstAppear
        case onMeditationsFetchRequested
        case onSignificantLocationChange
        case onLocationButtonTap
        case onMeditationsFetched([Meditation])
    }

    @Dependency(\.meditationsNetworkService)
    private var meditationsNetworkService: MeditationsNetworkService
}

extension MeditationsListReducer: Reducer {
    func reduce(
        into state: inout State,
        action: Action
    ) -> Effect<Action> {
        switch action {
        case .onFirstAppear:
            return .send(.onMeditationsFetchRequested)

        case .onSignificantLocationChange:
            return .send(.onMeditationsFetchRequested)

        case .onLocationButtonTap:
            return .none

        case .onMeditationsFetchRequested:
            state.isLoading = true

            return .run { [meditationsNetworkService] send in
                let meditations = try await meditationsNetworkService
                    .retrieveMeditations(for: nil)
                await send(.onMeditationsFetched(meditations))
            }

        case let .onMeditationsFetched(meditations):
            state.isLoading = false
            state.meditations = IdentifiedArray(uniqueElements: meditations)
            return .none
        }
    }
}
