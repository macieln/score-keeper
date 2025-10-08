//
//  Player.swift
//  ScoreKeeper
//
//  Created by Nahum Maciel on 10/7/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
