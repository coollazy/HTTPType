import Foundation

extension HTTPRequest {
    var formDataBody: Data? {
        bodyParameters
            .map { "\($0.key): \($0.value)" }
            .joined(separator: "\n")
            .data(using: .utf8)
    }
}
