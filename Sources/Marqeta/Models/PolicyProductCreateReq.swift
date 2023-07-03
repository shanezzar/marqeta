//
// PolicyProductCreateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request details for a credit product policy. */

public struct PolicyProductCreateReq: Codable {

    /** One or more card products associated with the credit product policy. */
    public var cardProducts: [PolicyProductCardProductReq]
    public var classification: ProductClassification
    public var creditLine: ProductCreditLine
    public var currencyCode: CurrencyCode
    /** Description of the credit product policy. */
    public var _description: String?
    public var interestCalculation: InterestCalculation
    /** Name of the credit product policy. */
    public var name: String
    public var payments: PolicyProductPaymentConfiguration
    public var productSubType: ProductSubType
    public var productType: ProductType
    /** Unique identifier of the credit product policy. */
    public var token: String?
    /** One or more usage types for the credit product policy. */
    public var usage: [BalanceType]

    public init(cardProducts: [PolicyProductCardProductReq], classification: ProductClassification, creditLine: ProductCreditLine, currencyCode: CurrencyCode, _description: String? = nil, interestCalculation: InterestCalculation, name: String, payments: PolicyProductPaymentConfiguration, productSubType: ProductSubType, productType: ProductType, token: String? = nil, usage: [BalanceType]) {
        self.cardProducts = cardProducts
        self.classification = classification
        self.creditLine = creditLine
        self.currencyCode = currencyCode
        self._description = _description
        self.interestCalculation = interestCalculation
        self.name = name
        self.payments = payments
        self.productSubType = productSubType
        self.productType = productType
        self.token = token
        self.usage = usage
    }

    public enum CodingKeys: String, CodingKey { 
        case cardProducts = "card_products"
        case classification
        case creditLine = "credit_line"
        case currencyCode = "currency_code"
        case _description = "description"
        case interestCalculation = "interest_calculation"
        case name
        case payments
        case productSubType = "product_sub_type"
        case productType = "product_type"
        case token
        case usage
    }

}