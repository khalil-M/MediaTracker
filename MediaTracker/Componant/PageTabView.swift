//
//  PageTabView.swift
//  MediaTracker
//
//  Created by User on 15/05/2025.
//

import SwiftUI

struct PageTabView: View {
    
    var icon: String
    var description: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .imageScale(.large)
                .font(.largeTitle.weight(.light))
                .symbolEffect(.breathe)
            Text(description)
                .font(.largeTitle.weight(.light))
                .fontWidth(.compressed)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    PageTabView(icon: "1.circle", description: "Add some movies to the watchlist if you want a plan to watch later")
        .padding()
}
