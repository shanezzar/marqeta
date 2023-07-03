//
// ResetUserPasswordModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ResetUserPasswordModel: Codable {

    /** New password to the cardholder&#x27;s user account on the Marqeta platform. */
    public var newPassword: String
    /** Unique identifier of the cardholder. */
    public var userToken: String

    public init(newPassword: String, userToken: String) {
        self.newPassword = newPassword
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case newPassword = "new_password"
        case userToken = "user_token"
    }

}