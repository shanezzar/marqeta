//
// FeeRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct FeeRequest: Codable {

    /** Indicates whether the fee is active. */
    public var active: Bool?
    /** Amount of the fee. */
    public var amount: Decimal
    /** Three-digit ISO 4217 currency code. */
    public var currencyCode: String
    /** Name of the fee request. */
    public var name: String
    public var realTimeAssessment: RealTimeFeeAssessmentRequest?
    /** Descriptive metadata about the fee. */
    public var tags: String?
    /** Unique identifier of the fee.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so Marqeta recommends that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(active: Bool? = nil, amount: Decimal, currencyCode: String, name: String, realTimeAssessment: RealTimeFeeAssessmentRequest? = nil, tags: String? = nil, token: String? = nil) {
        self.active = active
        self.amount = amount
        self.currencyCode = currencyCode
        self.name = name
        self.realTimeAssessment = realTimeAssessment
        self.tags = tags
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case active
        case amount
        case currencyCode = "currency_code"
        case name
        case realTimeAssessment = "real_time_assessment"
        case tags
        case token
    }

}