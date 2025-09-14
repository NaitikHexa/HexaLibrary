//
//  ErrorResponse.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

struct ErrorResponse: Decodable {
    let message: String
}

enum NetworkError: Error {
    case requestFailed
    case invalidResponse
    case noData
    case statusCode(Int)
    case decodingFailed
    case errorResponse(ErrorResponse)
}
