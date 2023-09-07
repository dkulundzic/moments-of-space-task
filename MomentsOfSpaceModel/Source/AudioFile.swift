import Foundation

public struct AudioFile: Codable {
    public let id: Int
    public let name: String
    public let url: URL
    public let version: String
    public let duration: Int

    public init(id: Int, name: String, url: URL, version: String, duration: Int) {
        self.id = id
        self.name = name
        self.url = url
        self.version = version
        self.duration = duration
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case url = "audio"
        case version
        case duration = "duration_seconds"
    }
}
