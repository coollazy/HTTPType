import Foundation

extension HTTPRequest {
    var jsonBody: Data? {
        try? JSONSerialization.data(withJSONObject: bodyParameters)
    }
}
