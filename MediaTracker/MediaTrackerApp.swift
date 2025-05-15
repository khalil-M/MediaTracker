//
//  MediaTrackerApp.swift
//  MediaTracker
//
//  Created by User on 15/05/2025.
//

import SwiftUI
import SwiftData

@main
struct MediaTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
