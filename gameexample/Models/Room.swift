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
        Room(personInRoom: Person(hp: nil, portrait: "highguard", dialog: ["You aren't supposed to be here, where are you here ","do me a favor", "go back to your cell b4 i kill u",""], inventory: [], dialog2: [], choice: nil, nameOfPerson: "Strong Guard", strength: 10, charisma: 100, intelligence: 1000, luck:100), roompic: "newerdorwhodis", itemsInRoom: [Item.items.randomElement()!], storyThingFromRoom: storyThing(text: "You find yourself in a waiting room, likely used for their unknowing test subjects. People coming in sold a dream of healing and help only to be stolen away or ending up worse than they were when they came in. You notice something shiny stuck between two of the couch cushions",
                                                                                                                                                                                                                                                                                                                                                                                                                                   choice: [Choice(description: "Read the magazine",item: Item(itemImg: "magazinepic", itemName: "Magazine", itemDescription: "Some random magazine you found in a couch"), nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Put down magazine")], storyType: .decision)), Choice(description: "You put the magazine back down on the table")], storyType: .decision)), Choice(description: "Put down magazine")], storyType: .decision)),
                                                                                                                                                                                                                                                                                                                                                                                                                                            Choice(description: "Investigate shiny object", nextStoryThing: storyThing(text: "You find a stick of gum and from the shiny wrapper you know this to be Ultrasonic Smile, a very popular gum brand that touts being able to make teeth shinier after one chew", choice: [Choice(description: "Pop the piece of gum in your mouth"), Choice(description: "Decide you don't trust this couch gum")], storyType: .decision))], storyType: .item)),
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

