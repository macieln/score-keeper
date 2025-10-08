//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Nahum Maciel on 10/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Stephanie", score: 0),
        Player(name: "Nahum", score: 0),
        Player(name: "Dertanian", score: 0)
    ]
    
    var body: some View {
        VStack {
            ForEach($players) { $player in
                TextField("Name", text: $player.name)
                Stepper("\(player.score)", value: $player.score)
            }
            
            Button("Add Player", systemImage: "plus") {
                players.append(
                    Player(name: "", score: 0)
                )
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
