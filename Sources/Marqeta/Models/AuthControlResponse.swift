//
// AuthControlResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AuthControlResponse: Codable {

    /** Indicates whether the authorization control is active.  This field is returned if it exists in the resource. */
    public var active: Bool?
    public var association: SpendControlAssociation?
    /** Date and time when the exception ends, in UTC.  This field is returned if it exists in the resource. */
    public var endTime: Date?
    public var merchantScope: AuthControlMerchantScope?
    /** Name of the authorization control. */
    public var name: String
    /** Date and time when the exception goes into effect, in UTC.  This field is returned if it exists in the resource. */
    public var startTime: Date?
    /** Unique identifier of the authorization control.  This field is returned if it exists in the resource. */
    public var token: String?

    public init(active: Bool? = nil, association: SpendControlAssociation? = nil, endTime: Date? = nil, merchantScope: AuthControlMerchantScope? = nil, name: String, startTime: Date? = nil, token: String? = nil) {
        self.active = active
        self.association = association
        self.endTime = endTime
        self.merchantScope = merchantScope
        self.name = name
        self.startTime = startTime
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case association
        case endTime = "end_time"
        case merchantScope = "merchant_scope"
        case name
        case startTime = "start_time"
        case token
    }

}