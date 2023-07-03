//
// AccountHolderGroupUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AccountHolderGroupUpdateRequest: Codable {

    public var config: AccountHolderGroupConfig?
    /** Descriptive name for the account holder group. */
    public var name: String?

    public init(config: AccountHolderGroupConfig? = nil, name: String? = nil) {
        self.config = config
        self.name = name
    }


}