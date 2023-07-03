//
// SimulationResponseModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import AnyCodable


public struct SimulationResponseModel: Codable {

    public var rawIso8583: [String:AnyCodable]?
    public var transaction: TransactionModel?

    public init(rawIso8583: [String:AnyCodable]? = nil, transaction: TransactionModel? = nil) {
        self.rawIso8583 = rawIso8583
        self.transaction = transaction
    }

    public enum CodingKeys: String, CodingKey { 
        case rawIso8583 = "raw_iso8583"
        case transaction
    }

}