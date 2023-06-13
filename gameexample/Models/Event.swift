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
    var story: storyThing
    var items:[Item]
    static let events: [Event] = [
        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: "The main floor is stark and unfeeling. A simulation of a receptionist sits behind the desk. It's after hours so the program doesn’t appear to be active. All that is in the room is a painting on the wall and a monstera plant tucked into the corner.", choice: [Choice(description: "investigate the receptionist", type: .decision), Choice(description: "Look closer at the picture", type: .decision, nextStoryThing: storyThing(text: "A picture of two people smiling outside of a small building. Living Innovations is marked on the sign above them. A muscle bound man with soft eyes and salt n’ pepper hair stands next to a rigid and thing woman with jet black curly hair tossed into a messy bun giving a slight smile. ", choice:[Choice(description: "Step away from painting", type: .decision)] )), Choice(description: "Investigate the plant", type: .decision, nextStoryThing: storyThing(text: "You touch one of the leaves of the plant. Its fake, like you assumed. Real plants are only kept in government controlled green houses due to their endangerment. Even Nova Corp couldn’t afford a a real one." , choice: [Choice(description: "Pull a leaf off the stem", type: .decision, nextStoryThing: storyThing(text: "You pull a leaf off and immediately a puff of air materializes out of the stem. It smells fresh and invigorating. This plant must have been made to purify the air and prevent as little effect from the crystals as possible(+1 INT)", choice: [Choice(description: "Leaf the plant alone", type: .decision)])), Choice(description: "Leaf the plant alone", type: .decision)]))]), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!]),
//        Event(name: "ThisIsTheNameOfTheGame", story: storyThing(text: <#T##String#>, choice: <#T##[Choice]#>), items: [Item.items.randomElement()!])
    ]
}
