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


extension LivePlayerDelegate {
    public func notifyPlay() {}
    public func notifyPause() {}
    public func contentStart() {}
    public func showOverlay(isVisible: Bool) {}
    public func hideOverlay(isVisible: Bool) {}
    public func isAdPlayingCallback(isPlaying: Bool) {}
    public func getLiveUrl(str: String) {}
    public func videoLiveWatchDuration(value: Int) {}
    public func isAdStart(value: Bool) {}
    public func isAdEnd(value: Bool) {}
    public func isAdSkip(value: Bool) {}
    public func adError() {}
}
