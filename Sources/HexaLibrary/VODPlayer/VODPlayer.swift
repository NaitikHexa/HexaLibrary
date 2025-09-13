//
//  VODPlayer.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

public protocol VODPlayer: Player {
    var vodList: VODList { get }
    var vodPrerollAdTag: String { get }
    var disableVODPrerollAdTag: Bool { get }
}

public struct VODList {
    var videoUrl: String
    var thumbnailUrl: String
    var videoTitle: String
    var videoId: String
}
