import Foundation

struct Constants {
    struct ScreenResources {
        static let baseUrl = "localhost"
        static let petListing = "pet-listing"
        static func petDetail(petId: Int) -> String {
            return "pet-detail/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.port = 3333
            components.path = "/\(resourceName)"
            return components.url
        }
    }
    
    struct Urls {
        static let baseUrl = "http://localhost:3333"
        static let petListing = "\(baseUrl)/pet-listing"
    }
}


//        let baseURL = URL(string: "http://localhost:3333")!
//
//        func resource(for resourceName: String) -> URL? {
//            baseURL.appending(path: resourceName)
//        }
