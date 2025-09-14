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
    
    public weak var delegate: LivePlayerDelegate?
    
    init(accountId: String, channelId: String, channelName: String, liveTVUrl: String, prerollAdTag: String, disablePrerollAdTag: Bool, midrollAdTag: String, disableMidrollAdTag: Bool, delegate: LivePlayerDelegate? = nil) {
        self.accountId = accountId
        self.channelId = channelId
        self.channelName = channelName
        self.liveTVUrl = liveTVUrl
        self.prerollAdTag = prerollAdTag
        self.disablePrerollAdTag = disablePrerollAdTag
        self.midrollAdTag = midrollAdTag
        self.disableMidrollAdTag = disableMidrollAdTag
        self.delegate = delegate
        
        fetchConfig()
    }
}


//MARK: - Methods

extension LivePlayerImplementation {
    
    private func fetchConfig() {
        
        guard accountId.isEmpty == false else { return }
        
        Task {
            do {
                let channels = try await NetworkServices.shared.fetchConfig(accountId)
                print(channels)
            } catch {
                //TODO: Handle Error
                print("Handle error")
            }
        }
    }
    
    func play() {
        print(">> Start Live Streaming")
        delegate?.notifyPlay()
    }
    
    func pause() {
        print(">> Pause Live Streaming")
        delegate?.notifyPause()
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
        delegate?.isAdStart(value: true)
    }
    
    func stopAd() {
        print(">> Stop Ad")
        delegate?.isAdEnd(value: true)
    }
    
    func skipAd() {
        print(">> Skip Ad")
        delegate?.isAdSkip(value: true)
    }
}
