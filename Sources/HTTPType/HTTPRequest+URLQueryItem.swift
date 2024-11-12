import Foundation

public extension HTTPRequest {
    var queryString: String? {
        guard !queryParameters.isEmpty else {
            return nil
        }
        
        return "?" + queryParameters
            .map { "\($0.key)=\($0.value)" }
            .joined(separator: "&")
    }
    
    var queryItems: [URLQueryItem]? {
        queryParameters
            .map { URLQueryItem(name: $0, value: $1) }
    }
}
