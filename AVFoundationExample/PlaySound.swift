//
//  PlaySound.swift
//  AVFoundationExample
//
//  Created by macbook on 05.02.2023.
//

import Foundation
import AVFoundation

class PlaySound: NSObject {
    var avPlayer: AVAudioPlayer!
    
    
    override init() {
        super.init()
        
        readMP3()
        
    }
    
    deinit {
        
    }
    
    func readMP3() {
        
        guard let fileURL = Bundle.main.url(forResource: "iphone-11-pro", withExtension: "mp3") else {
            print("could not read sound file")
            return
        }
        
        do {
            try self.avPlayer = AVAudioPlayer(contentsOf: fileURL)
            //try self.avPlayer = AVAudioPlayer(contentsOfURL: fileURL, fileTypeHint: AVFileTypeMPEGLayer3)

        } catch {
            print("could not create AVAudioPlayer \(error)")
            return
        }
    }
    
    func startStopPlay() {
        if avPlayer.isPlaying {
            avPlayer.pause()
        } else {
            avPlayer.play()
        }
    }
    
}
