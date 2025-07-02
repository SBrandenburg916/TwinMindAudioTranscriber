//
//  RecordingViewModel.swift
//

import Foundation
import Combine

@MainActor
class RecordingViewModel: ObservableObject {
    @Published var isRecording = false

    func toggleRecording() {
        isRecording.toggle()
        // Hook into AudioManager logic
    }
}
