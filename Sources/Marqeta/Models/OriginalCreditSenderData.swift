//
// OriginalCreditSenderData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OriginalCreditSenderData: Codable {

    public enum DeferredHoldBy: String, Codable { 
        case absent = "absent"
        case visa = "visa"
        case originator = "originator"
    }
    public enum FundingSource: String, Codable { 
        case credit = "credit"
        case debit = "debit"
        case prepaid = "prepaid"
        case depositAccount = "deposit_account"
        case cash = "cash"
        case mobileMoneyPayment = "mobile_money_payment"
        case nonVisaCredit = "non_visa_credit"
    }
    public enum SenderAccountType: String, Codable { 
        case other = "other"
        case rtnBankAccount = "rtn_bank_account"
        case iban = "iban"
        case cardAccount = "card_account"
        case email = "email"
        case phoneNumber = "phone_number"
        case bankAccountNumberAndIdentificationCode = "bank_account_number_and_identification_code"
        case walletId = "wallet_id"
        case socialNetworkId = "social_network_id"
    }
    public enum TransactionPurpose: String, Codable { 
        case familySupport = "family_support"
        case laborTransfers = "labor_transfers"
        case travel = "travel"
        case education = "education"
        case medicalTreatment = "medical_treatment"
        case emergencyNeed = "emergency_need"
        case savings = "savings"
        case gifts = "gifts"
        case other = "other"
        case salary = "salary"
        case lending = "lending"
        case cryptoCurrency = "crypto_currency"
    }
    public var deferredHoldBy: DeferredHoldBy?
    public var fundingSource: FundingSource
    public var senderAccountNumber: String?
    public var senderAccountType: SenderAccountType?
    public var senderAddress: String?
    public var senderCity: String?
    public var senderCountry: String?
    public var senderName: String?
    public var senderReferenceNumber: String?
    public var senderState: String?
    public var transactionPurpose: TransactionPurpose?
    public var uniqueTransactionReferenceNumber: String?
    public var visaTransactionPurpose: String?

    public init(deferredHoldBy: DeferredHoldBy? = nil, fundingSource: FundingSource, senderAccountNumber: String? = nil, senderAccountType: SenderAccountType? = nil, senderAddress: String? = nil, senderCity: String? = nil, senderCountry: String? = nil, senderName: String? = nil, senderReferenceNumber: String? = nil, senderState: String? = nil, transactionPurpose: TransactionPurpose? = nil, uniqueTransactionReferenceNumber: String? = nil, visaTransactionPurpose: String? = nil) {
        self.deferredHoldBy = deferredHoldBy
        self.fundingSource = fundingSource
        self.senderAccountNumber = senderAccountNumber
        self.senderAccountType = senderAccountType
        self.senderAddress = senderAddress
        self.senderCity = senderCity
        self.senderCountry = senderCountry
        self.senderName = senderName
        self.senderReferenceNumber = senderReferenceNumber
        self.senderState = senderState
        self.transactionPurpose = transactionPurpose
        self.uniqueTransactionReferenceNumber = uniqueTransactionReferenceNumber
        self.visaTransactionPurpose = visaTransactionPurpose
    }

    public enum CodingKeys: String, CodingKey { 
        case deferredHoldBy = "deferred_hold_by"
        case fundingSource = "funding_source"
        case senderAccountNumber = "sender_account_number"
        case senderAccountType = "sender_account_type"
        case senderAddress = "sender_address"
        case senderCity = "sender_city"
        case senderCountry = "sender_country"
        case senderName = "sender_name"
        case senderReferenceNumber = "sender_reference_number"
        case senderState = "sender_state"
        case transactionPurpose = "transaction_purpose"
        case uniqueTransactionReferenceNumber = "unique_transaction_reference_number"
        case visaTransactionPurpose = "visa_transaction_purpose"
    }

}