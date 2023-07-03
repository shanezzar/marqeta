//
// Device.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information related to the device being provisioned. */

public struct Device: Codable {

    /** Identity number of the device. */
    public var deviceId: String?
    /** Device&#x27;s IP address. */
    public var ipAddress: String?
    /** Language the device is configured to use. */
    public var languageCode: String?
    /** Geographic coordinates of the device. */
    public var location: String?
    /** Name of the device. */
    public var name: String?
    /** Device&#x27;s telephone number. */
    public var phoneNumber: String?
    /** Unique identifier of the device object. */
    public var token: String?
    /** Type of device being provisioned. */
    public var type: String?

    public init(deviceId: String? = nil, ipAddress: String? = nil, languageCode: String? = nil, location: String? = nil, name: String? = nil, phoneNumber: String? = nil, token: String? = nil, type: String? = nil) {
        self.deviceId = deviceId
        self.ipAddress = ipAddress
        self.languageCode = languageCode
        self.location = location
        self.name = name
        self.phoneNumber = phoneNumber
        self.token = token
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case deviceId = "device_id"
        case ipAddress = "ip_address"
        case languageCode = "language_code"
        case location
        case name
        case phoneNumber = "phone_number"
        case token
        case type
    }

}