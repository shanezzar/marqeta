//
// PeerTransferRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PeerTransferRequest: Codable {

    /** Amount of the transfer. */
    public var amount: Decimal
    /** Three-digit ISO 4217 currency code. */
    public var currencyCode: String
    /** Additional descriptive text about the transfer. */
    public var memo: String?
    /** Specifies the business account holder that receives funds.  Send a &#x60;GET&#x60; request to &#x60;/businesses&#x60; to retrieve business tokens. */
    public var recipientBusinessToken: String?
    /** Specifies the user account holder that receives funds.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve user tokens. */
    public var recipientUserToken: String?
    /** Specifies the business account holder that sends funds.  Send a &#x60;GET&#x60; request to &#x60;/businesses&#x60; to retrieve business tokens. */
    public var senderBusinessToken: String?
    /** Specifies the user account holder that sends funds.  Send a &#x60;GET&#x60; request to &#x60;/users&#x60; to retrieve user tokens. */
    public var senderUserToken: String?
    /** Metadata about the peer transfer. */
    public var tags: String?
    /** Unique identifier of the peer transfer request.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(amount: Decimal, currencyCode: String, memo: String? = nil, recipientBusinessToken: String? = nil, recipientUserToken: String? = nil, senderBusinessToken: String? = nil, senderUserToken: String? = nil, tags: String? = nil, token: String? = nil) {
        self.amount = amount
        self.currencyCode = currencyCode
        self.memo = memo
        self.recipientBusinessToken = recipientBusinessToken
        self.recipientUserToken = recipientUserToken
        self.senderBusinessToken = senderBusinessToken
        self.senderUserToken = senderUserToken
        self.tags = tags
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case currencyCode = "currency_code"
        case memo
        case recipientBusinessToken = "recipient_business_token"
        case recipientUserToken = "recipient_user_token"
        case senderBusinessToken = "sender_business_token"
        case senderUserToken = "sender_user_token"
        case tags
        case token
    }

}