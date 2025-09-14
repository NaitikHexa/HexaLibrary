//
//  NetworkManager.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

struct NetworkManager {
    
    static func request<T: Decodable>(_ urlRequest: URLRequest) async throws -> T {
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.invalidResponse
            }
            
            let decoder = JSONDecoder()
            
            guard (200...299).contains(httpResponse.statusCode) else {
                do {
                    let errorResponse = try decoder.decode(ErrorResponse.self, from: data)
                    throw NetworkError.errorResponse(errorResponse)
                } catch {
                    throw NetworkError.statusCode(httpResponse.statusCode)
                }
            }
            
            do {
                let decodedData = try decoder.decode(T.self, from: data)
                return decodedData
            } catch {
                debugPrint("Decoding failed with error: \(error)")
                throw NetworkError.decodingFailed
            }
            
        } catch {
            throw NetworkError.requestFailed
        }
    }
}
