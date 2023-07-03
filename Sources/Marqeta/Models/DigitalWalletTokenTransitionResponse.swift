//
// DigitalWalletTokenTransitionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DigitalWalletTokenTransitionResponse: Codable {

    public enum Channel: String, Codable { 
        case tokenServiceProvider = "TOKEN_SERVICE_PROVIDER"
        case digitalWallet = "DIGITAL_WALLET"
        case api = "API"
        case ivr = "IVR"
        case fraud = "FRAUD"
        case admin = "ADMIN"
        case system = "SYSTEM"
        case tokenServiceProviderApi = "TOKEN_SERVICE_PROVIDER_API"
    }
    public enum FulfillmentStatus: String, Codable { 
        case decisionRed = "DECISION_RED"
        case decisionYellow = "DECISION_YELLOW"
        case decisionGreen = "DECISION_GREEN"
        case rejected = "REJECTED"
        case provisioned = "PROVISIONED"
    }
    public enum ReasonCode: String, Codable { 
        case _00 = "00"
        case _01 = "01"
        case _02 = "02"
        case _03 = "03"
        case _04 = "04"
        case _05 = "05"
        case _06 = "06"
        case _07 = "07"
        case _08 = "08"
        case _09 = "09"
        case _10 = "10"
        case _11 = "11"
        case _12 = "12"
        case _13 = "13"
        case _14 = "14"
        case _15 = "15"
        case _16 = "16"
        case _17 = "17"
        case _18 = "18"
        case _19 = "19"
        case _20 = "20"
        case _21 = "21"
        case _22 = "22"
        case _23 = "23"
        case _24 = "24"
        case _25 = "25"
        case _26 = "26"
        case _27 = "27"
        case _28 = "28"
        case _29 = "29"
        case _30 = "30"
        case _31 = "31"
    }
    public enum State: String, Codable { 
        case requested = "REQUESTED"
        case requestDeclined = "REQUEST_DECLINED"
        case active = "ACTIVE"
        case suspended = "SUSPENDED"
        case terminated = "TERMINATED"
    }
    public var cardSwap: CardSwapHash?
    /** Mechanism by which the transition was initiated. */
    public var channel: Channel
    /** Date and time when the digital wallet provisioning request was created, in UTC. */
    public var createdTime: Date?
    public var digitalWalletToken: DigitalWalletTokenHash
    /** Provisioning status of the digital wallet token. */
    public var fulfillmentStatus: FulfillmentStatus
    /** Reason for the transition. */
    public var reason: String?
    /** Standard code describing the reason for the transition:  * *00:* Object activated for the first time * *01:* Requested by you * *02:* Inactivity over time * *03:* This address cannot accept mail or the addressee is unknown * *04:* Negative account balance * *05:* Account under review * *06:* Suspicious activity was identified * *07:* Activity outside the program parameters was identified * *08:* Confirmed fraud was identified * *09:* Matched with an Office of Foreign Assets Control list * *10:* Card was reported lost * *11:* Card information was cloned * *12:* Account or card information was compromised * *13:* Temporary status change while on hold/leave * *14:* Initiated by Marqeta * *15:* Initiated by issuer * *16:* Card expired * *17:* Failed KYC * *18:* Changed to &#x60;ACTIVE&#x60; because information was properly validated * *19:* Changed to &#x60;ACTIVE&#x60; because account activity was properly validated * *20:* Change occurred prior to the normalization of reason codes * *21:* Initiated by a third party, often a digital wallet provider * *22:* PIN retry limit reached * *23:* Card was reported stolen * *24:* Address issue * *25:* Name issue * *26:* SSN issue * *27:* DOB issue * *28:* Email issue * *29:* Phone issue * *30:* Account/fulfillment mismatch * *31:* Other reason */
    public var reasonCode: ReasonCode?
    /** Specifies the state to which the digital wallet token is transitioning. */
    public var state: State
    /** Unique identifier of the digital wallet token transition, and not the identifier of the digital wallet token itself. */
    public var token: String
    /** Type of digital wallet token transition. &#x60;state.activated&#x60;, for example. */
    public var type: String

    public init(cardSwap: CardSwapHash? = nil, channel: Channel, createdTime: Date? = nil, digitalWalletToken: DigitalWalletTokenHash, fulfillmentStatus: FulfillmentStatus, reason: String? = nil, reasonCode: ReasonCode? = nil, state: State, token: String, type: String) {
        self.cardSwap = cardSwap
        self.channel = channel
        self.createdTime = createdTime
        self.digitalWalletToken = digitalWalletToken
        self.fulfillmentStatus = fulfillmentStatus
        self.reason = reason
        self.reasonCode = reasonCode
        self.state = state
        self.token = token
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case cardSwap = "card_swap"
        case channel
        case createdTime = "created_time"
        case digitalWalletToken = "digital_wallet_token"
        case fulfillmentStatus = "fulfillment_status"
        case reason
        case reasonCode = "reason_code"
        case state
        case token
        case type
    }

}