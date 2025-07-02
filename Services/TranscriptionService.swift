//
//  TranscriptionService.swift
//

import Foundation

class TranscriptionService {
    static let shared = TranscriptionService()

    func transcribe(audioURL: URL, completion: @escaping (Result<String, Error>) -> Void) {
        // Placeholder transcription call
        DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
            completion(.success("Transcribed text for: \(audioURL.lastPathComponent)"))
        }
    }
}
