//
//  NetworkServices.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

struct NetworkServices {
    
    private init() {}
    
    static let shared = NetworkServices()
    
    func fetchConfig(_ accountId: String) async throws -> [Channel] {
        let request = URLRequest(url: API.config(accountId))
        let responseModel: ResponseModel = try await NetworkManager.request(request)
        return responseModel.channels
    }
}
