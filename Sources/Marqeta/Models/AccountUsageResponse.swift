//
// AccountUsageResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information on how a credit account is used and what types of balances are permitted on the account. */

public struct AccountUsageResponse: Codable {

    /** Contains one or more APRs associated with the type of balance on the credit account */
    public var aprs: [AprScheduleResponse]
    /** Contains one or more fees associated with the usage type. */
    public var fees: [AccountFee]?
    public var type: BalanceType

    public init(aprs: [AprScheduleResponse], fees: [AccountFee]? = nil, type: BalanceType) {
        self.aprs = aprs
        self.fees = fees
        self.type = type
    }


}