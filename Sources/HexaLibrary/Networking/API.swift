//
//  API.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

struct API {
    
    static let config: (String) -> URL = { accountId in
        return URL(string: "https://s3.ap-southeast-1.amazonaws.com/vidgyor.com/player/account/\(accountId)/conf_android/\(accountId)_appletv.json")!
    }
}
