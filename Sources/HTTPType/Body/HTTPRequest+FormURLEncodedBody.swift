import Foundation

extension HTTPRequest {
    var formURLEncodedBody: Data? {
        guard let parameters = bodyParameters as? [String: String] else {
            return nil
        }
        guard let data: Data = try? URLEncodedFormEncoder().encode(parameters) else {
            return nil
        }
        
        return data
    }
}
