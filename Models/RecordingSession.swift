//
//  RecordingSession.swift
//  TwinMindAudioTranscriber
//

import Foundation
import SwiftData

@Model
class RecordingSession {
    var id: UUID
    var title: String
    var date: Date
    var segments: [AudioSegment]

    init(id: UUID = UUID(), title: String, date: Date = Date(), segments: [AudioSegment] = []) {
        self.id = id
        self.title = title
        self.date = date
        self.segments = segments
    }
}
