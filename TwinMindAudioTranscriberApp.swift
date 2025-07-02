//
//  TwinMindAudioTranscriberApp.swift
//  TwinMindAudioTranscriber
//
//  Created for TwinMind Take-Home Assignment
//

import SwiftUI
import SwiftData

@main
struct TwinMindAudioTranscriberApp: App {
    var body: some Scene {
        WindowGroup {
            SessionListView()
        }
        .modelContainer(for: [RecordingSession.self, AudioSegment.self])
    }
}
