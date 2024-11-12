import Foundation

extension HTTPRequest {
    var contentType: String? {
        headers
            .first(where: { $0.key.lowercased() == "content-type" })?.value.lowercased()
    }
}
