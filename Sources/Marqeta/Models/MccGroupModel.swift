//
// MccGroupModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import AnyCodable


public struct MccGroupModel: Codable {

    /** Indicates if the group is active or inactive. */
    public var active: Bool?
    public var config: Config?
    /** The set of merchant category codes that you want to include in this group. For each element, valid characters are 0-9, and the length must be 4 digits. You can also specify a range like \&quot;9876-9880\&quot;. An MCC can belong to more than one group. */
    public var mccs: [AnyCodable]
    /** The name of the group. */
    public var name: String
    /** The unique identifier of the group.  If you do not include a token, the system will generate one automatically. This token is necessary for use in other API calls, so we recommend that rather than let the system generate one, you use a simple string that is easy to remember. This value cannot be updated. */
    public var token: String?

    public init(active: Bool? = nil, config: Config? = nil, mccs: [AnyCodable], name: String, token: String? = nil) {
        self.active = active
        self.config = config
        self.mccs = mccs
        self.name = name
        self.token = token
    }


}