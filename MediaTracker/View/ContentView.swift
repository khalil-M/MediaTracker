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
    
    @State private var isSheerPresented: Bool = false
    
    var body: some View {
        List {
            ForEach(movies) { movie in
                HStack {
                    Text(movie.title)
                    Spacer()
                    Text(movie.genre.name)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        withAnimation {
                            modelContext.delete(movie)
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
        }
        .overlay {
            if movies.isEmpty {
                EmptyListView()
            }
        }
        .safeAreaInset(edge: .bottom, alignment: .center) {
            
            Button {
                isSheerPresented.toggle()
            } label: {
                ButtonImageView(symbolName: "plus.circle.fill")
            }
        }
        .sheet(isPresented: $isSheerPresented) {
            NewMovieFormView()
        }
    }
}

#Preview("Sample Data") {
    ContentView()
        .modelContainer(Movie.preview)
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Movie.self, inMemory: true)
}
