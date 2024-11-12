import Foundation

public extension HTTPRequest {
    var url: URL? {
        var components = URLComponents(string: domain)
        components?.path = path
        if let port {
            components?.port = port
        }
        if queryItems == queryItems {
            components?.queryItems = queryItems
        }
        
        return components?.url
    }
}
