public protocol Session {
    func send(_ request: HTTPRequest) async throws -> HTTPResponse
}
