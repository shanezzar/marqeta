//
// AccountDocumentsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Account documents response. */

public struct AccountDocumentsResponse: Codable {

    public var accountStatement: AccountDocumentResponse?
    public var benefitsDisclosure: AccountDocumentResponse?
    public var cardMemberAgreement: AccountDocumentResponse?
    public var eDisclosure: AccountDocumentResponse?
    public var privacyPolicy: AccountDocumentResponse?
    public var rewardsDisclosure: AccountDocumentResponse?
    public var summaryOfCreditTerms: AccountDocumentResponse?
    public var termsSchedule: AccountDocumentResponse?

    public init(accountStatement: AccountDocumentResponse? = nil, benefitsDisclosure: AccountDocumentResponse? = nil, cardMemberAgreement: AccountDocumentResponse? = nil, eDisclosure: AccountDocumentResponse? = nil, privacyPolicy: AccountDocumentResponse? = nil, rewardsDisclosure: AccountDocumentResponse? = nil, summaryOfCreditTerms: AccountDocumentResponse? = nil, termsSchedule: AccountDocumentResponse? = nil) {
        self.accountStatement = accountStatement
        self.benefitsDisclosure = benefitsDisclosure
        self.cardMemberAgreement = cardMemberAgreement
        self.eDisclosure = eDisclosure
        self.privacyPolicy = privacyPolicy
        self.rewardsDisclosure = rewardsDisclosure
        self.summaryOfCreditTerms = summaryOfCreditTerms
        self.termsSchedule = termsSchedule
    }

    public enum CodingKeys: String, CodingKey { 
        case accountStatement = "account_statement"
        case benefitsDisclosure = "benefits_disclosure"
        case cardMemberAgreement = "card_member_agreement"
        case eDisclosure = "e_disclosure"
        case privacyPolicy = "privacy_policy"
        case rewardsDisclosure = "rewards_disclosure"
        case summaryOfCreditTerms = "summary_of_credit_terms"
        case termsSchedule = "terms_schedule"
    }

}