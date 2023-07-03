//
// AuthControlExemptMidsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AuthControlExemptMidsRequest: Codable {

    public var association: SpendControlAssociation?
    /** Date and time when the exception ends, in UTC. */
    public var endTime: Date?
    /** Unique identifier of the merchant group to be exempted. This field is required if there is no entry in the &#x60;mid&#x60; field. Pass either this field or the &#x60;mid&#x60; field, not both.  For information about merchant groups, see &lt;&lt;/core-api/merchant-groups, Merchant Groups&gt;&gt;. */
    public var merchantGroupToken: String?
    /** Merchant to be exempted. This field is required if there is no entry in the &#x60;merchant_group_token&#x60; field. Use either this field or the &#x60;merchant_group_token&#x60; field, not both. */
    public var mid: String?
    /** Name of the merchant identifier authorization control exemption. */
    public var name: String
    /** Date and time when the exception starts, in UTC. */
    public var startTime: Date?
    /** Unique identifier of the merchant identifier authorization control exemption.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(association: SpendControlAssociation? = nil, endTime: Date? = nil, merchantGroupToken: String? = nil, mid: String? = nil, name: String, startTime: Date? = nil, token: String? = nil) {
        self.association = association
        self.endTime = endTime
        self.merchantGroupToken = merchantGroupToken
        self.mid = mid
        self.name = name
        self.startTime = startTime
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case association
        case endTime = "end_time"
        case merchantGroupToken = "merchant_group_token"
        case mid
        case name
        case startTime = "start_time"
        case token
    }

}