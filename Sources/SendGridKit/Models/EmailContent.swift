import Foundation

public struct EmailContent: Encodable {
    
    /// The mime type of the content you are including in your email. For example, “text/plain” or “text/html”.
    public let type: String
    
    /// The actual content of the specified mime type that you are including in your email. minLength 1
    public let value: String

    public init(type: String, value: String) {
        self.type = type
        self.value = value
    }
}

extension EmailContent: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.init(type: "text/plain", value: value)
    }
}
