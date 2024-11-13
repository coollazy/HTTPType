import Foundation

public extension HTTPRequest {
    var body: Data? {
        switch contentType {
        case "text/plain":
            bodyRawData
            
        case "application/json":
            jsonBody
            
        case "application/form-data":
            formDataBody
            
        case "application/x-www-form-urlencoded":
            formURLEncodedBody
            
        default:
            nil
        }
    }
}
