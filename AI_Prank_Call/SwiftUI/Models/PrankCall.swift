
import Foundation

struct PrankCall: Identifiable, Codable {
    var id: UUID
    var title: String
    var description: String
    var audioFileURL: URL
    var isFavorite: Bool
    var isCustom: Bool

    init(id: UUID = UUID(), title: String, description: String, audioFileURL: URL, isFavorite: Bool = false, isCustom: Bool = false) {
        self.id = id
        self.title = title
        self.description = description
        self.audioFileURL = audioFileURL
        self.isFavorite = isFavorite
        self.isCustom = isCustom
    }
}
