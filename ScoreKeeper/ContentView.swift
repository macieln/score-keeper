//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Nahum Maciel on 10/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["Nahum", "Stephanie", "Dertanian"]
    
    var body: some View {
        VStack {
            ForEach(0..<players.count, id: \.description) { index in
                TextField("Name", text: $players[index])
            }
            
            Button("Add Player", systemImage: "plus") {
                players.append("")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
