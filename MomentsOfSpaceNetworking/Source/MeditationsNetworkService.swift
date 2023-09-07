import Foundation
import MomentsOfSpaceModel
import CoreLocation

public protocol MeditationsNetworkService {
    func retrieveMeditations(for location: CLLocationCoordinate2D?) async throws -> [Meditation]
}

public final class DefaultMeditationsNetworkService: MeditationsNetworkService {
    public init() { }
    
    public func retrieveMeditations(
        for location: CLLocationCoordinate2D?
    ) async throws -> [Meditation] {
        mockedMeditations()
    }
}

private extension DefaultMeditationsNetworkService {
    func mockedMeditations() -> [Meditation] {
        [
            Meditation(
                id: 1,
                audioFiles: [.mock(), .mock()],
                title: "Mellow Out",
                subtitle: "Emotion",
                description: "Wind down and rest with the sand between your toes."
            ),
            Meditation(
                id: 2,
                audioFiles: [.mock(), .mock()],
                title: "Allow That",
                subtitle: "Acceptance",
                description: "Wind up and make yourself nervous with the sand between your toes."
            ),
            Meditation(
                id: 3,
                audioFiles: [.mock(), .mock()],
                title: "Energy in Emotion",
                subtitle: "Emotion",
                description: "Eat a burger and forego everything; Awakening is for losers."
            ),
            Meditation(
                id: 4,
                audioFiles: [.mock(), .mock()],
                title: "Calm It",
                subtitle: "Anxiety",
                description: "Cry your nihilist soul in the corner."
            )
        ]
    }
}
