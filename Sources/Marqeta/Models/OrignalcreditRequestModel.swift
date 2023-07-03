//
// OrignalcreditRequestModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrignalcreditRequestModel: Codable {

    public enum ModelType: String, Codable { 
        case accountToAccount = "account_to_account"
        case personToPerson = "person_to_person"
        case prepaid = "prepaid"
        case walletTransfer = "wallet_transfer"
        case moneyTransferByBank = "money_transfer_by_bank"
        case businessToBusiness = "business_to_business"
        case disbursement = "disbursement"
        case governmentDisbursement = "government_disbursement"
        case gamblingPayout = "gambling_payout"
        case loyalty = "loyalty"
        case merchantDisbursement = "merchant_disbursement"
        case onlineGamblingPayout = "online_gambling_payout"
        case pensionDisbursement = "pension_disbursement"
        case prepaidLoads = "prepaid_loads"
        case cardBillPayment = "card_bill_payment"
        case billPayment = "bill_payment"
        case cashClaim = "cash_claim"
        case cashIn = "cash_in"
        case cashOut = "cash_out"
        case mobileAirTimePayment = "mobile_air_time_payment"
        case moneyTransferByMerchant = "money_transfer_by_merchant"
        case faceToFaceMerchantPayment = "face_to_face_merchant_payment"
        case governmentPayment = "government_payment"
        case paymentsGoodsServices = "payments_goods_services"
        case purchaseRepayment = "purchase_repayment"
    }
    public var amount: Decimal
    public var cardAcceptor: CardAcceptorModel?
    public var cardToken: String
    public var mid: String
    public var screeningScore: String?
    public var senderData: OriginalCreditSenderData?
    public var transactionPurpose: String?
    public var type: ModelType
    public var webhook: Webhook?

    public init(amount: Decimal, cardAcceptor: CardAcceptorModel? = nil, cardToken: String, mid: String, screeningScore: String? = nil, senderData: OriginalCreditSenderData? = nil, transactionPurpose: String? = nil, type: ModelType, webhook: Webhook? = nil) {
        self.amount = amount
        self.cardAcceptor = cardAcceptor
        self.cardToken = cardToken
        self.mid = mid
        self.screeningScore = screeningScore
        self.senderData = senderData
        self.transactionPurpose = transactionPurpose
        self.type = type
        self.webhook = webhook
    }

    public enum CodingKeys: String, CodingKey { 
        case amount
        case cardAcceptor = "card_acceptor"
        case cardToken = "card_token"
        case mid
        case screeningScore = "screening_score"
        case senderData = "sender_data"
        case transactionPurpose
        case type
        case webhook
    }

}