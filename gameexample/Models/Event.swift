//
//  Event.swift
//  DustRats
//
//  Created by Jordan Barconey on 6/8/23.
//

import Foundation
import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let name: String
    var choice: Choice
    var items:[Item]
    var text: String?
    var chance: Int
    var randomInt = Int.random(in: 1...7)
    
    //    func roll(chance: Int, randomInt: Int ) -> ID {
    //        if chance == randomInt {
    //        }
    //    }
    
    static let events: [Event] = [
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 1),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 2),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 3),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 4),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 5),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 6),
        Event(name: "ThisIsTheNameOfTheGame", choice: Choice(description: "", effect: "", image: ""), items: [Item.items.randomElement()!], chance: 7)
    ]
}
