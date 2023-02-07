import Foundation

enum ComponentError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
}

struct Component: Decodable {
    let type: ComponentType
    let data: [String: Any]
    
    private enum CodingKeys: CodingKey {
        case type
        case data
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(ComponentType.self, forKey: .type )
        self.data = try container.decode(JSON.self, forKey: .data).value as! [String: Any]
    }
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [Component]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
                case .featuredImage:
                    guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                        throw ComponentError.decodingError
                    }
                    components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}