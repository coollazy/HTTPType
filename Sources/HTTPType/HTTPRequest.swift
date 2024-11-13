import Foundation

public protocol HTTPRequest {
    var method: Method { get }
    var scheme: Scheme { get }
    var host: String { get }
    var port: Int? { get }
    var path: String { get }
    var headers: [String: String] { get set }
    var queryParameters: [String: String] { get set }
    /// application/json
    /// application/form-data
    /// application/x-www-form-urlencoded
    var bodyParameters: [String: Any] { get set }
    /// 當 content-type 設定為 text/plain 時，直接放在 bodyData
    var bodyRawData: Data? { get }
    
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
    
    var bodyRawData: Data? {
        nil
    }
}

public extension HTTPRequest {
    var domain: String {
        scheme.rawValue + host
    }
}
