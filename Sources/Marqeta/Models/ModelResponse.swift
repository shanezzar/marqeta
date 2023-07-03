//
// ModelResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the Marqeta platform&#x27;s assertion as to whether its address verification data matches that provided by the cardholder. */

public struct ModelResponse: Codable {

    /** Information about the relevant velocity control for the transaction, if applicable. */
    public var additionalInformation: String?
    /** Four-digit code corresponding with the outcome of the attempted transaction type.  &#x60;card_security_code_verification.response.code&#x60; indicates whether the verification check passed and can have these possible values:  * 0000 – passed * 0001 – did not pass */
    public var code: String
    /** Information on the outcome of the attempted transaction type. */
    public var memo: String

    public init(additionalInformation: String? = nil, code: String, memo: String) {
        self.additionalInformation = additionalInformation
        self.code = code
        self.memo = memo
    }

    public enum CodingKeys: String, CodingKey { 
        case additionalInformation = "additional_information"
        case code
        case memo
    }

}