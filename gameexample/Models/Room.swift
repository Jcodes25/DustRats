//
//  classes.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 5/9/23.
//

import Foundation
import SwiftUI

struct Room: Identifiable {
    let id = UUID()
    var personInRoom: Person?
    var key:Item?
    var dialog:String?
    var choices:[Choice]?
    var roompic:String
    var itemsInRoom: [Item]?
    var storyThingFromRoom: storyThing?

    mutating func move() {
        self = Room.rooms.randomElement()!
    }
    
    mutating func stairs() {
        self = Room.stairs.randomElement()!
    }
        
    static let rooms: [Room] = [
        Room(personInRoom: Person(hp: nil, portrait: "villian", dialog: ["You aren't supposed to be here, where are you here ","do me a favor", "go back to your cell b4 i kill u",""], inventory: [], dialog2: [], choice: nil, nameOfPerson: "Strong Guard", strength: 10, charisma: 100, intelligence: 1000, luck:100), roompic: "newerdorwhodis", itemsInRoom: [Item.items.randomElement()!], storyThingFromRoom: storyThing(text: "The door slide open but before you can truely get a good look at its contents you hear the sound someone coming down the hallway. You quickly turn to the first things you see for a hiding place. A giant tube, a desk and a", choice: [Choice(description: "Hide in tube"), Choice(description: "Crouch under desk")], storyType: .decision)),
        Room(roompic: "DR_2DoorsResizeFinal", itemsInRoom: [Item.items.randomElement()!])
//        Room(roompic: "room", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "poolrooms", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "room1", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "room2", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "hallway", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "backgroundthingy", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "MainRoom", itemsInRoom: [Item.items.randomElement()!]),
//        Room(roompic: "newdorwhodis", itemsInRoom: [Item.items.randomElement()!]),
       
             ]
    static let stairs: [Room] = [Room(roompic:"stairs")]
}

extension Room: Equatable {
    static func == (lhs: Room, rhs: Room) -> Bool {
        lhs.id == rhs.id
    }
}

