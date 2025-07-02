//
//  AudioSegment.swift
//

import Foundation
import SwiftData

@Model
class AudioSegment {
    var id: UUID
    var recordingURL: URL
    var transcriptionText: String?
    var createdAt: Date
    var isTranscribed: Bool

    init(id: UUID = UUID(), recordingURL: URL, transcriptionText: String? = nil, createdAt: Date = Date(), isTranscribed: Bool = false) {
        self.id = id
        self.recordingURL = recordingURL
        self.transcriptionText = transcriptionText
        self.createdAt = createdAt
        self.isTranscribed = isTranscribed
    }
}
