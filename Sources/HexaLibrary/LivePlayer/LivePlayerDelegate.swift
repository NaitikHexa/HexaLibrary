//
//  LivePlayerDelegate.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

public protocol LivePlayerDelegate: AnyObject {
    func notifyPlay()
    func notifyPause()
    func contentStart()
    func showOverlay(isVisible: Bool)
    func hideOverlay(isVisible: Bool)
    func isAdPlayingCallback(isPlaying: Bool)
    func getLiveUrl(str: String)
    func videoLiveWatchDuration(value: Int)
    func isAdStart(value: Bool)
    func isAdEnd(value: Bool)
    func isAdSkip(value: Bool)
    func adError()
}
