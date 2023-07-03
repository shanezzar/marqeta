//
// DigitalWalletAndroidPayProvisionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DigitalWalletAndroidPayProvisionResponse: Codable {

    /** Unique identifier of the card resource to use for the provisioning request. */
    public var cardToken: String
    /** Date and time when the digital wallet provisioning request was created, in UTC. */
    public var createdTime: Date
    /** Date and time when the digital wallet token provisioning request was last updated, in UTC. */
    public var lastModifiedTime: Date
    public var pushTokenizeRequestData: AndroidPushTokenizeRequestData

    public init(cardToken: String, createdTime: Date, lastModifiedTime: Date, pushTokenizeRequestData: AndroidPushTokenizeRequestData) {
        self.cardToken = cardToken
        self.createdTime = createdTime
        self.lastModifiedTime = lastModifiedTime
        self.pushTokenizeRequestData = pushTokenizeRequestData
    }

    public enum CodingKeys: String, CodingKey { 
        case cardToken = "card_token"
        case createdTime = "created_time"
        case lastModifiedTime = "last_modified_time"
        case pushTokenizeRequestData = "push_tokenize_request_data"
    }

}