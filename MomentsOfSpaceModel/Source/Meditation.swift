import Foundation

public struct Meditation: Codable, Identifiable, Equatable {
    public let id: Int
    public let audioFiles: [AudioFile]
    public let title: String
    public let subtitle: String
    public let description: String

    public init(
        id: Int,
        audioFiles: [AudioFile],
        title: String,
        subtitle: String,
        description: String
    ) {
        self.id = id
        self.audioFiles = audioFiles
        self.title = title
        self.subtitle = subtitle
        self.description = description
    }
}

public extension Meditation {
    var totalDurationInSeconds: Duration {
        let seconds = audioFiles.reduce(0, { $0 + $1.durationInSeconds })
        return .seconds(seconds)
    }
}

extension Meditation: Mockable {
    public static func mock() -> Meditation {
        Meditation(
            id: 1,
            audioFiles: [.mock()],
            title: "Mocked title",
            subtitle: "Mocked subtitle",
            description: "Mocked description"
        )
    }
}
