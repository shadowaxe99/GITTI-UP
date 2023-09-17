
import Foundation

struct User: Codable, Identifiable {
    var id: UUID
    var name: String
    var email: String
    var password: String
    var prankCalls: [PrankCall]

    init(id: UUID = UUID(), name: String, email: String, password: String, prankCalls: [PrankCall] = []) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.prankCalls = prankCalls
    }
}
