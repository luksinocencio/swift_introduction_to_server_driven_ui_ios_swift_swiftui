import Foundation

protocol NetworkService {
    func load(_ resource: String) async throws -> ScreenModel
}
