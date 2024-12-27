/// 定義傳輸層
public protocol Session {
    func send(_ request: HTTPRequest) async throws -> HTTPResponse
    
    /// 設定每次發送都要加上的 header
    func appendAdditionalHeader(_ key: String, value: String)
    var additionalHeader: [String: String]? { get }
}
