import Foundation

enum ActionType: String, Decodable {
    case sheet
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
