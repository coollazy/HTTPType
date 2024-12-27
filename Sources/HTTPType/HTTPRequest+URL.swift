import Foundation

public extension HTTPRequest {
    var url: URL? {
        var components = URLComponents(string: domain)
        if let path {
            components?.path = path
        }
        if let port {
            components?.port = port
        }
        if queryItems?.isEmpty == false {
            components?.queryItems = queryItems
        }
        
        return components?.url
    }
}
