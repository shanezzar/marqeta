//
// ImagesCard.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specifies personalized images that appear on the card. */

public struct ImagesCard: Codable {

    /** Specifies a PNG image to display on the card. */
    public var name: String?
    /** Specifies the color of the image displayed on the card. */
    public var thermalColor: String?

    public init(name: String? = nil, thermalColor: String? = nil) {
        self.name = name
        self.thermalColor = thermalColor
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case thermalColor = "thermal_color"
    }

}