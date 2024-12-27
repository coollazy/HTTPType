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

public extension HTTPResponse {
    /// 取出 header 的資料，key 不區分大小寫，會自動轉成小寫比對
    func value(forHTTPHeaderField key: String) -> String? {
        guard let originalKey = headers.keys
            .first(where: { $0.lowercased() == key.lowercased() }) else {
            return nil
        }
        return headers[originalKey]
    }
}
