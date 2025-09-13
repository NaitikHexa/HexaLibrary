//
//  VidgyorPlayer.swift
//  HexaLibrary
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import Foundation

final public class VidgyorPlayer {
    
    private init() {}
    
    public static func livePlayer(accountId: String, channelId: String, channelName: String, liveTVUrl: String, prerollAdTag: String, disablePrerollAdTag: Bool, midrollAdTag: String, disableMidrollAdTag: Bool) -> LivePlayer {
        
        let livePlayer = LivePlayerImplementation(accountId: accountId, channelId: channelId, channelName: channelName, liveTVUrl: liveTVUrl, prerollAdTag: prerollAdTag, disablePrerollAdTag: disablePrerollAdTag, midrollAdTag: midrollAdTag, disableMidrollAdTag: disableMidrollAdTag)
        return livePlayer
    }
    
    public static func vodPlayer(accountId: String, channelId: String, vodList: VODList, vodPrerollAdTag: String, disableVODPrerollAdTag: Bool) -> VODPlayer {
        
        let vodPlayer = VODPlayerImplementation(accountId: accountId, channelId: channelId, vodList: vodList, vodPrerollAdTag: vodPrerollAdTag, disableVODPrerollAdTag: disableVODPrerollAdTag)
        return vodPlayer
    }
}
