//
//  LivePlayer.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

class LivePlayerImplementation: LivePlayer {
    var accountId: String
    var channelId: String
    var channelName: String
    var liveTVUrl: String
    var prerollAdTag: String
    var disablePrerollAdTag: Bool
    var midrollAdTag: String
    var disableMidrollAdTag: Bool
    
    init(accountId: String, channelId: String, channelName: String, liveTVUrl: String, prerollAdTag: String, disablePrerollAdTag: Bool, midrollAdTag: String, disableMidrollAdTag: Bool) {
        self.accountId = accountId
        self.channelId = channelId
        self.channelName = channelName
        self.liveTVUrl = liveTVUrl
        self.prerollAdTag = prerollAdTag
        self.disablePrerollAdTag = disablePrerollAdTag
        self.midrollAdTag = midrollAdTag
        self.disableMidrollAdTag = disableMidrollAdTag
    }
}


//MARK: - Methods

extension LivePlayerImplementation {
    
    func play() {
        print(">> Start Live Streaming")
    }
    
    func pause() {
        print(">> Pause Live Streaming")
    }
    
    func resume() {
        print(">> Resume Live Streaming")
    }
    
    func seek(to time: Double) {
        print(">> Seek Live Streaming to: \(time)")
    }
    
    func stop() {
        print(">> Stop Live Streaming")
    }
    
    func startAd() {
        print(">> Start Ad")
    }
    
    func stopAd() {
        print(">> Stop Ad")
    }
    
    func skipAd() {
        print(">> Skip Ad")
    }
}
