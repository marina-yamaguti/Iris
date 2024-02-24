//
//  Constants.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation

class Constants: ObservableObject {
    static let shared = Constants()
    
    private var audioPlayer: AVAudioPlayer?
    
    private var player2: AVAudioPlayer?
    
    var brailleI: [[CircleData]] = [
        [CircleData(isTouched: true, color: .lightGray), CircleData(isTouched: false, color: .brandRed)],
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .lightGray)],
        [CircleData(isTouched: true, color: .lightGray), CircleData(isTouched: true, color: .lightGray)]
    ]
    
    var brailleR: [[CircleData]] = [
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .lightGray)],
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: false, color: .brandRed)],
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .lightGray)]
    ]
    
    var brailleS: [[CircleData]] = [
        [CircleData(isTouched: true, color: .lightGray), CircleData(isTouched: false, color: .brandRed)],
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .lightGray)],
        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .lightGray)]
    ]
    
    let wordFirst: [Int] = [0, 2, 2, 2]
    
    let wordSecond: [Int] = [1, 0, 2, 2]
    
    let wordThird: [Int] = [1, 1, 0, 2]
    
    let wordFourth: [Int] = [1, 1, 1, 0]

    let wordLast: [Int] = [1, 1, 1, 1]

    private init() {}
    
    func playAudio(audio: String, loop: Bool = false, volume: Float = 1.0) {
        guard let audioURL = Bundle.main.url(forResource: audio, withExtension: "mp3") else {
            print("No audio file found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, options: .mixWithOthers)
            
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            audioPlayer?.volume = volume
            audioPlayer?.numberOfLoops = loop ? -1 : 0
            audioPlayer?.play()
        } catch {
            print("Couldn't play audio. Error: \(error)")
        }
    }
    
    func play2(audio: String = "dogBark", loop: Bool = false, volume: Float = 0.5) {
        guard let audioURL = Bundle.main.url(forResource: audio, withExtension: "mp3") else {
            print("No audio file found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, options: .mixWithOthers)
            
            player2 = try AVAudioPlayer(contentsOf: audioURL)
            player2?.volume = volume
            player2?.numberOfLoops = loop ? -1 : 0
            player2?.play()
        } catch {
            print("Couldn't play audio. Error: \(error)")
        }
    }
}

struct CircleData: Identifiable, Hashable {
    let id = UUID()
    var isTouched: Bool
    var color: Color
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(isTouched)
        hasher.combine(color)
    }
}
