//
// RefundDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details for a refund. */

public struct RefundDetails: Codable {

    /** Description of the refund. */
    public var _description: String
    public var method: RefundMethod

    public init(_description: String, method: RefundMethod) {
        self._description = _description
        self.method = method
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case method
    }

}