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
//    var itemsInRoom: [Item]?
    var roomEvent: [Event]?
    var storyThingFromRoom: storyThing?

    mutating func move() {
        self = Room.rooms.randomElement()!
    }
    
    mutating func stairs() {
        self = Room.stairs.randomElement()!
    }
        
    static let rooms: [Room] = [
        Room(roompic: "newerdorwhodis", roomEvent: [Event.events.randomElement()!], storyThingFromRoom: storyThing(text: "The door slide open but before you can truely get a good look at its contents you hear the sound someone coming down the hallway. You quickly turn to the first things you see for a hiding place. A giant tube, a desk and a", choice: [Choice(description: "Hide in tube", type: .decision), Choice(description: "Crouch under desk", type: .decision)])),
        Room(roompic: "room", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "poolrooms", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "room1", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "room2", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "hallway", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "backgroundthingy", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "MainRoom", roomEvent: [Event.events.randomElement()!]),
        Room(roompic: "newdorwhodis", roomEvent: [Event.events.randomElement()!])
             ]
    static let stairs: [Room] = [Room(roompic:"stairs")]
}

extension Room: Equatable {
    static func == (lhs: Room, rhs: Room) -> Bool {
        lhs.id == rhs.id
    }
}

