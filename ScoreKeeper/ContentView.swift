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
        Player(name: "Dertanian", score: 0),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            HStack {
                Text("Player")
                    .padding(.leading)
                
                Spacer()
                
                Text("Score")
                    .padding(.trailing)
            }
            .font(.headline)
            .padding(.bottom)
            
            List($players) { $player in
                HStack {
                    TextField("Name", text: $player.name)
                        .listRowSeparator(.hidden)
                    Text("\(player.score)")
                    Stepper("\(player.score)", value: $player.score)
                        .labelsHidden()
                        .listRowSeparator(.hidden)
                }
                .listRowSeparator(.hidden)
                .padding(.bottom)
            }
            .listStyle(.plain)
            
            Button("Add Player", systemImage: "plus") {
                players.append(
                    Player(name: "", score: 0)
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
