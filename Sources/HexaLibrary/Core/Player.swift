//
//  Player.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation


public typealias Player = PlayerParameters & PlaybackControls & AdControls

public protocol PlayerParameters {
    var accountId: String { get }
    var channelId: String { get }
}


public protocol PlaybackControls: AnyObject {
    func play()
    func pause()
    func resume()
    func seek(to time: Double)
    func stop()
}


public protocol AdControls: AnyObject {
    func startAd()
    func stopAd()
    func skipAd()
}
