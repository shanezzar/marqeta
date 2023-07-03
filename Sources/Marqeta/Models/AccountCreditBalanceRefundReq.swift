//
// AccountCreditBalanceRefundReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains details on a credit balance refund. */

public struct AccountCreditBalanceRefundReq: Codable {

    /** Amount of the credit balance refund.  The maximum refund amount is the amount that brings the account balance to $0. For example, $4000 is the maximum refund amount for a -$4000 account balance. */
    public var amount: Decimal
    public var currencyCode: CurrencyCode
    /** Description for the credit balance refund. */
    public var _description: String
    public var method: RefundMethod
    /** Unique identifier of the credit balance refund. */
    public var token: String?

    public init(amount: Decimal, currencyCode: CurrencyCode, _description: String, method: RefundMethod, token: String? = nil) {
        self.amount = amount
        self.currencyCode = currencyCode
        self._description = _description
        self.method = method
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case currencyCode = "currency_code"
        case _description = "description"
        case method
        case token
    }

}