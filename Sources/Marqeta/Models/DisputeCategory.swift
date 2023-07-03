//
// DisputeCategory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Category to which the dispute belongs. */
public enum DisputeCategory: String, Codable {
    case fraud = "FRAUD"
    case auth = "AUTH"
    case processingError = "PROCESSING_ERROR"
    case consumerDispute = "CONSUMER_DISPUTE"
}