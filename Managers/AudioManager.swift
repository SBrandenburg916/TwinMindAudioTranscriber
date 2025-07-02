//
//  AudioManager.swift
//

import Foundation
import AVFoundation

class AudioManager: NSObject, ObservableObject {
    private let engine = AVAudioEngine()
    private let session = AVAudioSession.sharedInstance()
    private var audioFile: AVAudioFile?

    override init() {
        super.init()
        configureSession()
    }

    func configureSession() {
        do {
            try session.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker, .allowBluetooth])
            try session.setActive(true)
            NotificationCenter.default.addObserver(self, selector: #selector(handleInterruption), name: AVAudioSession.interruptionNotification, object: nil)
        } catch {
            print("Audio session error: \(error)")
        }
    }

    @objc func handleInterruption(notification: Notification) {
        // Handle interruptions like calls, Siri, etc.
    }

    func startRecording() {
        // TODO: Configure engine input and write to file
    }

    func stopRecording() {
        engine.stop()
    }
}
