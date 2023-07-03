//
// Available.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies the available balances of the velocity controls associated with a user.  This object is not returned if the velocity control window is &#x60;TRANSACTION&#x60;, because available balances do not apply to single-transaction velocity windows. */

public struct Available: Codable {

    /** Total amount of spend remaining in the velocity control. */
    public var amount: Decimal
    /** Number of days remaining in the velocity control time window. */
    public var daysRemaining: Int?
    /** Number of uses remaining in the velocity control. */
    public var uses: Int

    public init(amount: Decimal, daysRemaining: Int? = nil, uses: Int) {
        self.amount = amount
        self.daysRemaining = daysRemaining
        self.uses = uses
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case daysRemaining = "days_remaining"
        case uses
    }

}