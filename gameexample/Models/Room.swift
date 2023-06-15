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
    var roompic:String
    var roomEvent: [Event]?
    let doors: [DoorOptions]

    mutating func move() {
        self = Room.rooms.randomElement()!
    }
    
    mutating func stairs() {
        self = Room.stairs.randomElement()!
    }
        
    static let rooms: [Room] = [
        Room(roompic: "HolDaDor", roomEvent: [Event.events.randomElement()!], doors: [.center, .left]),
        Room(roompic: "newerdorwhodis", roomEvent: [Event.events.randomElement()!], doors: [.center, .left, .right]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "", roomEvent: [Event.events.randomElement()!], doors: [.center]),
        Room(roompic: "newdorwhodis", roomEvent: [Event.events.randomElement()!], doors: [.center])
             ]
    static let stairs: [Room] = [Room(roompic:"stairs", doors: [.elevator])]
}

extension Room: Equatable {
    static func == (lhs: Room, rhs: Room) -> Bool {
        lhs.id == rhs.id
    }
}

