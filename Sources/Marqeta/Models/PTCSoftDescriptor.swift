//
// PTCSoftDescriptor.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PTCSoftDescriptor: Codable {

    public var address: PTCAddress
    public var email: String?
    public var name: String
    public var phone: PTCPhone?

    public init(address: PTCAddress, email: String? = nil, name: String, phone: PTCPhone? = nil) {
        self.address = address
        self.email = email
        self.name = name
        self.phone = phone
    }


}