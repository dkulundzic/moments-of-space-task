import Foundation

public struct Meditation: Codable {
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
