import SwiftUI
import ComposableArchitecture
import MomentsOfSpaceModel
import MomentsOfSpaceNetworking

struct MeditationsListView: View {
    let store: StoreOf<MeditationsListReducer>

    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            ZStack {
                Color(asset: Asset.Colors.gray)
                    .ignoresSafeArea()

                if viewStore.isLoading {
                    ProgressView()
                } else {
                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(viewStore.meditations) { meditation in
                                ItemView(meditation: meditation)
                            }
                        }
                        .padding()
                    }
                }
            }
            .onFirstAppear {
                viewStore.send(.onFirstAppear)
            }
        }
    }
}

struct MeditationsListView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationsListView(
            store: Store(initialState: MeditationsListReducer.State()) {
                MeditationsListReducer()
            }
        )
    }
}
