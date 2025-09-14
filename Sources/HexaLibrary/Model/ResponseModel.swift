//
//  ResponseModel.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

struct ResponseModel: Decodable {
    var channels: [Channel]
}

struct Channel: Decodable {
    var channelName: String
    var channelId: String
    var enablePlayerErrorSlate: Bool
    var disableFirebaseAnalytics: Bool
    var gaAnalyticsId: String
    var liveTVUrl: String
    var pollingUrl: String
    var prerollAdtag: String
    var enableMidrollVia: String
    var isVmap: Bool
    var vmapAdtag: String
    var midrollAdtag: [String]
    var disableMidrollAdTags: Bool
    var disablePrerollAdTags: Bool
    var maxMidrollAds: Int
    var midrollLoadingMessage: String
    var midrollResumingMessage: String
    var posterImage: String
    var vodPreRollAdTag: String
    
    enum CodingKeys: String, CodingKey {
        case channelName = "channel_name"
        case channelId = "channel_id"
        case enablePlayerErrorSlate = "enablePlayerErrorSlate"
        case disableFirebaseAnalytics = "disable_firebase_analytics"
        case gaAnalyticsId = "ga_analytics_id"
        case liveTVUrl = "livetv_url"
        case pollingUrl = "polling_url"
        case prerollAdtag = "preroll_adtag"
        case enableMidrollVia = "enable_midroll_via"
        case isVmap = "is_vmap"
        case vmapAdtag = "vmap_adtag"
        case midrollAdtag = "midroll_adtag"
        case disableMidrollAdTags = "disable_midroll_adtags"
        case disablePrerollAdTags = "disable_preroll_adtags"
        case maxMidrollAds = "max_midroll_ads"
        case midrollLoadingMessage = "midroll_loading_message"
        case midrollResumingMessage = "midroll_resuming_message"
        case posterImage = "poster_image"
        case vodPreRollAdTag = "vod_preroll_adtag"
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.channelName = try container.decode(String.self, forKey: .channelName)
        self.channelId = try container.decode(String.self, forKey: .channelId)
        self.enablePlayerErrorSlate = try container.decode(Bool.self, forKey: .enablePlayerErrorSlate)
        self.disableFirebaseAnalytics = try container.decode(Bool.self, forKey: .disableFirebaseAnalytics)
        self.gaAnalyticsId = try container.decode(String.self, forKey: .gaAnalyticsId)
        self.liveTVUrl = try container.decode(String.self, forKey: .liveTVUrl)
        self.pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
        self.prerollAdtag = try container.decode(String.self, forKey: .prerollAdtag)
        self.enableMidrollVia = try container.decode(String.self, forKey: .enableMidrollVia)
        self.isVmap = try container.decode(Bool.self, forKey: .isVmap)
        self.vmapAdtag = try container.decode(String.self, forKey: .vmapAdtag)
        self.midrollAdtag = try container.decode([String].self, forKey: .midrollAdtag)
        self.disableMidrollAdTags = try container.decode(Bool.self, forKey: .disableMidrollAdTags)
        self.disablePrerollAdTags = try container.decode(Bool.self, forKey: .disablePrerollAdTags)
        self.maxMidrollAds = try container.decode(Int.self, forKey: .maxMidrollAds)
        self.midrollLoadingMessage = try container.decode(String.self, forKey: .midrollLoadingMessage)
        self.midrollResumingMessage = try container.decode(String.self, forKey: .midrollResumingMessage)
        self.posterImage = try container.decode(String.self, forKey: .posterImage)
        self.vodPreRollAdTag = try container.decode(String.self, forKey: .vodPreRollAdTag)
    }
}
