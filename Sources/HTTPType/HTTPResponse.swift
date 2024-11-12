import Foundation

public struct HTTPResponse {
    public let statusCode: UInt
    public let headers: [String: String]
    public let body: Data?
    
    public init(statusCode: UInt, headers: [String : String], body: Data?) {
        self.statusCode = statusCode
        self.headers = headers
        self.body = body
    }
}
