import Foundation

public struct AudioFile: Codable, Equatable {
    public let id: Int
    public let name: String
    public let url: URL
    public let version: String
    public let durationInSeconds: Int

    public init(
        id: Int,
        name: String,
        url: URL,
        version: String,
        durationInSeconds: Int
    ) {
        self.id = id
        self.name = name
        self.url = url
        self.version = version
        self.durationInSeconds = durationInSeconds
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case url = "audio"
        case version
        case durationInSeconds = "duration_seconds"
    }
}

extension AudioFile: Mockable {
    // swiftlint:disable force_unwrapping
    public static func mock() -> AudioFile {
        let id = (0...Int.max).randomElement()!
        let name = id.description
        let duration = (120...54600).randomElement()!
        return AudioFile(
            id: id,
            name: name,
            url: URL(string: "https://api.momentsofspace.com/api/audio/101/download/")!,
            version: "1.0",
            durationInSeconds: duration
        )
    }
    // swiftlint:enable force_unwrapping
}
