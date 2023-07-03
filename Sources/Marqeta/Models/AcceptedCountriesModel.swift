//
// AcceptedCountriesModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AcceptedCountriesModel: Codable {

    /** Comma-delimited list of accepted countries by ISO 3166 three-digit country code. */
    public var countryCodes: [String]
    /** Date and time when the accepted countries object was created, in UTC. This field is returned when included in your query. */
    public var createdTime: Date?
    /** Specifies if the list of accepted countries in this object is an allow list. If set to &#x60;true&#x60;, transactions are accepted for all countries included in the object&#x27;s &#x60;country_codes&#x60; array. If set to &#x60;false&#x60;, transactions are prohibited for all countries included in the object&#x27;s &#x60;country_codes&#x60; array. */
    public var isWhitelist: Bool
    /** Date and time when the accepted countries object was last updated, in UTC. This field is returned when included in your query. */
    public var lastModifiedTime: Date?
    /** Name of the &#x60;acceptedcountries&#x60; object. */
    public var name: String
    /** The unique identifier of the &#x60;acceptedcountries&#x60; object.  This field is always returned. */
    public var token: String?

    public init(countryCodes: [String], createdTime: Date? = nil, isWhitelist: Bool, lastModifiedTime: Date? = nil, name: String, token: String? = nil) {
        self.countryCodes = countryCodes
        self.createdTime = createdTime
        self.isWhitelist = isWhitelist
        self.lastModifiedTime = lastModifiedTime
        self.name = name
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case countryCodes = "country_codes"
        case createdTime = "created_time"
        case isWhitelist = "is_whitelist"
        case lastModifiedTime = "last_modified_time"
        case name
        case token
    }

}