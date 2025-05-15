//
//  ContentView.swift
//  MediaTracker
//
//  Created by User on 15/05/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query private var movies: [Movie]
    var body: some View {
        List {
            
        }
        .overlay {
            if movies.isEmpty {
                EmptyListView()
            }
        }
    }
}

#Preview("Emppty List") {
    ContentView()
        .modelContainer(for: Movie.self, inMemory: true)
    
}
