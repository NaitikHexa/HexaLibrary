//
//  LivePlayer.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

public protocol LivePlayer: Player {
    var channelName: String { get }
    var liveTVUrl: String { get }
    var prerollAdTag: String { get }
    var disablePrerollAdTag: Bool { get }
    var midrollAdTag: String { get }
    var disableMidrollAdTag: Bool { get }
}
