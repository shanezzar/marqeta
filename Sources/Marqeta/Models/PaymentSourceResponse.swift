//
// PaymentSourceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about a payment source. */

public struct PaymentSourceResponse: Codable {

    public enum Owner: String, Codable { 
        case individual = "INDIVIDUAL"
        case business = "BUSINESS"
    }
    public enum SourceType: String, Codable { 
        case checking = "CHECKING"
        case savings = "SAVINGS"
        case other = "OTHER"
    }
    public enum VerificationStatus: String, Codable { 
        case achVerified = "ACH_VERIFIED"
        case pending = "PENDING"
    }
    /** Last four digits of the payment source account number. */
    public var accountSuffix: String?
    /** Unique identifier of the credit account receiving the payment. */
    public var accountToken: String?
    /** Date and time when the payment source was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date?
    /** Date and time when the payment source was last updated on Marqeta&#x27;s credit platform, in UTC. */
    public var lastModifiedTime: Date?
    /** Name of the individual or business who owns the payment source. */
    public var name: String?
    /** Type of payment source owner. */
    public var owner: Owner?
    /** Routing number of the payment source. */
    public var routingNumber: String?
    /** Type of payment source. */
    public var sourceType: SourceType?
    public var status: PaymentSourceStatusEnum?
    /** Unique identifier of the payment source. */
    public var token: String?
    /** Unique identifier of the user making the payment. */
    public var userToken: String?
    /** Additional information on the verification (for example, an external verification identifier that&#x27;s outside Marqeta&#x27;s credit platform). */
    public var verificationNotes: String?
    /** Status of the verification for the payment source. */
    public var verificationStatus: VerificationStatus?

    public init(accountSuffix: String? = nil, accountToken: String? = nil, createdTime: Date? = nil, lastModifiedTime: Date? = nil, name: String? = nil, owner: Owner? = nil, routingNumber: String? = nil, sourceType: SourceType? = nil, status: PaymentSourceStatusEnum? = nil, token: String? = nil, userToken: String? = nil, verificationNotes: String? = nil, verificationStatus: VerificationStatus? = nil) {
        self.accountSuffix = accountSuffix
        self.accountToken = accountToken
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.name = name
        self.owner = owner
        self.routingNumber = routingNumber
        self.sourceType = sourceType
        self.status = status
        self.token = token
        self.userToken = userToken
        self.verificationNotes = verificationNotes
        self.verificationStatus = verificationStatus
    }

    public enum CodingKeys: String, CodingKey { 
        case accountSuffix = "account_suffix"
        case accountToken = "account_token"
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case name
        case owner
        case routingNumber = "routing_number"
        case sourceType = "source_type"
        case status
        case token
        case userToken = "user_token"
        case verificationNotes = "verification_notes"
        case verificationStatus = "verification_status"
    }

}