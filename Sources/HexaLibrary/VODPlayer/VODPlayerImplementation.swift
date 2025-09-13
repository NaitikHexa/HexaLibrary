//
//  VODPlayer.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

class VODPlayerImplementation: VODPlayer {
    var accountId: String
    var channelId: String
    var vodList: VODList
    var vodPrerollAdTag: String
    var disableVODPrerollAdTag: Bool
    
    init(accountId: String, channelId: String, vodList: VODList, vodPrerollAdTag: String, disableVODPrerollAdTag: Bool) {
        self.accountId = accountId
        self.channelId = channelId
        self.vodList = vodList
        self.vodPrerollAdTag = vodPrerollAdTag
        self.disableVODPrerollAdTag = disableVODPrerollAdTag
    }
}


//MARK: - Methods

extension VODPlayerImplementation {
    
    func play() {
        print(">> Start VOD Streaming")
    }
    
    func pause() {
        print(">> Pause VOD Streaming")
    }
    
    func resume() {
        print(">> Resume VOD Streaming")
    }
    
    func seek(to time: Double) {
        print(">> Seek VOD Streaming to: \(time)")
    }
    
    func stop() {
        print(">> Stop VOD Streaming")
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
