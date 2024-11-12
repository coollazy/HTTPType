import Foundation

public protocol HTTPRequest {
    var method: Method { get }
    var scheme: Scheme { get }
    var host: String { get }
    var port: Int? { get }
    var path: String { get }
    var headers: [String: String] { get set }
    var queryParameters: [String: String] { get set }
    var bodyParameters: [String: Any] { get set }
    
    func send() async throws -> HTTPResponse
}

// 初始值
public extension HTTPRequest {
    var scheme: Scheme {
        .https
    }
    
    var port: Int? {
        nil
    }
}

public extension HTTPRequest {
    var domain: String {
        scheme.rawValue + host
    }
}
