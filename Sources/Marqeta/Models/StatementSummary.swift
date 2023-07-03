//
// StatementSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the summary data for an account&#x27;s monthly statement. */

public struct StatementSummary: Codable {

    /** Unique identifier of the credit account on which the statement summary is generated. */
    public var accountToken: String
    /** Amount available to spend on the credit account, as of the statement closing date. */
    public var availableCredit: Decimal
    /** Balance of the credit account when the statement period ended. */
    public var closingBalance: Decimal
    /** Date and time when the statement period ended. */
    public var closingDate: Date
    /** Date and time when the statement summary was created on Marqeta&#x27;s credit platform, in UTC. */
    public var createdTime: Date
    /** Maximum balance the credit account can carry, as of the statement closing date. */
    public var creditLimit: Decimal?
    /** Total amount of credits received during the statement period. */
    public var credits: Decimal
    public var cycleType: CycleType
    /** Number of days in the billing cycle, also known as the statement period. */
    public var daysInBillingCycle: Int
    /** Total amount of fees charged during the statement period. Does not include periodic fees. */
    public var fees: Decimal
    /** Total amount of interest charged during the statement period. */
    public var interest: Decimal
    /** Balance of the credit account when the statement period began. */
    public var openingBalance: Decimal
    /** Date and time when the statement period began. */
    public var openingDate: Date
    /** Total payment amount, required to make the account current. */
    public var pastDueAmount: Decimal
    /** Total amount of payments made during the statement period. */
    public var payments: Decimal
    /** Total amount of purchases made during the statement period. */
    public var purchases: Decimal
    /** Unique identifier of the statement summary. */
    public var token: UUID

    public init(accountToken: String, availableCredit: Decimal, closingBalance: Decimal, closingDate: Date, createdTime: Date, creditLimit: Decimal? = nil, credits: Decimal, cycleType: CycleType, daysInBillingCycle: Int, fees: Decimal, interest: Decimal, openingBalance: Decimal, openingDate: Date, pastDueAmount: Decimal, payments: Decimal, purchases: Decimal, token: UUID) {
        self.accountToken = accountToken
        self.availableCredit = availableCredit
        self.closingBalance = closingBalance
        self.closingDate = closingDate
        self.createdTime = createdTime
        self.creditLimit = creditLimit
        self.credits = credits
        self.cycleType = cycleType
        self.daysInBillingCycle = daysInBillingCycle
        self.fees = fees
        self.interest = interest
        self.openingBalance = openingBalance
        self.openingDate = openingDate
        self.pastDueAmount = pastDueAmount
        self.payments = payments
        self.purchases = purchases
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case accountToken = "account_token"
        case availableCredit = "available_credit"
        case closingBalance = "closing_balance"
        case closingDate = "closing_date"
        case createdTime = "created_time"
        case creditLimit = "credit_limit"
        case credits
        case cycleType = "cycle_type"
        case daysInBillingCycle = "days_in_billing_cycle"
        case fees
        case interest
        case openingBalance = "opening_balance"
        case openingDate = "opening_date"
        case pastDueAmount = "past_due_amount"
        case payments
        case purchases
        case token
    }

}