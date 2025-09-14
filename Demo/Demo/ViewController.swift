//
//  ViewController.swift
//  Demo
//
//  Created by Naitik Ratilal Patel on 2025-09-13.
//

import UIKit
import HexaLibrary

class ViewController: UIViewController {

    var livePlayer: LivePlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        livePlayer = VidgyorPlayer.livePlayer(accountId: "681302107ba33b87918b122b", channelId: "", channelName: "", liveTVUrl: "", prerollAdTag: "", disablePrerollAdTag: true, midrollAdTag: "", disableMidrollAdTag: true, delegate: self)
    }
    
    @IBAction func play(_ sender: UIButton) {
        livePlayer.play()
    }
    
    @IBAction func pause(_ sender: UIButton) {
        livePlayer.pause()
    }
    
    @IBAction func stop(_ sender: UIButton) {
        livePlayer.stop()
    }
    
    @IBAction func playAd(_ sender: UIButton) {
        livePlayer.startAd()
    }
    
    @IBAction func stopAd(_ sender: UIButton) {
        livePlayer.stopAd()
    }
    
    @IBAction func skipAd(_ sender: UIButton) {
        livePlayer.skipAd()
    }
}


extension ViewController: LivePlayerDelegate {
    
    func notifyPlay() {
        print("Called delegate: notifyPlay")
    }
    
    func notifyPause() {
        print("Called delegate: notifyPause")
    }
    
    func isAdStart(value: Bool) {
        print("Called delegate: isAdStart \(value)")
    }
    
    func isAdSkip(value: Bool) {
        print("Called delegate: isAdSkip \(value)")
    }
    
    func isAdEnd(value: Bool) {
        print("Called delegate: isAdEnd \(value)")
    }
}
