//
//  SessionListView.swift
//

import SwiftUI

struct SessionListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Your Sessions")
                    .font(.title)
                // Add session list UI here
            }
            .navigationTitle("Audio Sessions")
        }
    }
}
