//
// RiskAssessment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the digital wallet provider&#x27;s risk assessment for provisioning the digital wallet token. */

public struct RiskAssessment: Codable {

    /** Wallet provider&#x27;s decision as to whether the digital wallet token should be provisioned. */
    public var score: String?
    /** Wallet provider&#x27;s risk assessment version. */
    public var version: String?

    public init(score: String? = nil, version: String? = nil) {
        self.score = score
        self.version = version
    }


}