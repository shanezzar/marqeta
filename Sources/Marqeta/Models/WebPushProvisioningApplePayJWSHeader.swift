//
// WebPushProvisioningApplePayJWSHeader.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains header data for the JWS object. */

public struct WebPushProvisioningApplePayJWSHeader: Codable {

    /** Unique identifier of the JSON Web Signature (JWS) public key of the key pair used to generate the signature. */
    public var kid: String

    public init(kid: String) {
        self.kid = kid
    }


}