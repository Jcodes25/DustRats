//
//  ViewModel.swift
//  gameexample
//
//  Created by Cory Tripathy on 5/12/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var currentRoom: Room 
    @Published var player:Person
    @Published var trash: Trash
    @Published var progress: Double = 0.0
    @Published var showInventory: Bool = false
    @Published var roomCounter: RoomCount
    @Published var randomStatusArray = [StealthStatus.zero, StealthStatus.one, StealthStatus.three, StealthStatus.four, StealthStatus.five, StealthStatus.six, StealthStatus.seven, StealthStatus.eight, StealthStatus.nine, StealthStatus.ten]
    //@Published var barurl = "Stealth_0"
    @Published var roomDialog: storyThing? =
    storyThing(text: "The main floor is stark and unfeeling. A simulation of a receptionist sits behind the desk. It's after hours so the program doesn’t appear to be active. All that is in the room is a painting on the wall and a monstera plant tucked into the corner.", choice:
                [Choice(description: "Investigate the receptionist"),

                 Choice(description: "Look closer at the picture", nextStoryThing: storyThing(text: "A picture of two people smiling outside of a small building. Living Innovations is marked on the sign above them. A muscle bound man with soft eyes and salt n’ pepper hair stands next to a rigid and thing woman with jet black curly hair tossed into a messy bun giving a slight smile. ", choice: [Choice(description: "Step away from painting")], storyType: .decision)),



                 Choice(description: "Investigate the plant", nextStoryThing: storyThing(text: "You touch one of the leaves of the plant. Its fake, like you assumed. Real plants are only kept in government controlled green houses due to their endangerment. Even Nova Corp couldn’t afford a a real one.", choice: [Choice(description: "Pull a leaf off the stem", nextStoryThing: storyThing(text: "You pull a leaf off and immediately a puff of air materializes out of the stem. It smells fresh and invigorating. This plant must have been made to purify the air and prevent as little effect from the crystals as possible(+1 INT)", choice: [Choice(description: "Great!"), Choice(description: "Whatever")], storyType: .decision), statIncrease: .int), Choice(description: "Leave the plant alone")], storyType: .decision))],
               storyType: .decision)
//
//    storyThing(text: "You find yourself in a waiting room, likely used for their unknowing test subjects. People coming in sold a dream of healing and help only to be stolen away or ending up worse than they were when they came in. You notice something shiny stuck between two of the couch cushions",
//               choice: [Choice(description: "Reade magazines on table",item: Item(itemImg: "magazinepic", itemName: "Magazine", itemDescription: "Some randome magazine that you found on a couch"), nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Continue Reading", nextStoryThing: storyThing(text: "You pick up a magazine called The New Glaucous Times. Skimming through you stop on a article called “Star Dust Refinement Surgery? A Phasing Fade or the Hottest New Choice” It tells about the surgery done to “refine” your stardust or in other words make some one a more “acceptable” star dust color. The surgery is purely cosmetic and doesn’t even help solve the mental and physical instablities that some people have due to the constant inhilation of the meteor’s gases", choice: [Choice(description: "Put down magazine")], storyType: .decision)), Choice(description: "You put the magazine back down on the table")], storyType: .decision)), Choice(description: "Put down magazine")], storyType: .decision)),
//                                                Choice(description: "Investigate shiny object")], storyType: .item)
//    storyThing(text: "The door slide open but before you can truely get a good look at its contents you hear the sound someone coming down the hallway. You quickly turn to the first things you see for a hiding place. A giant tube, a desk and a ", choice: [Choice(description: "Hide in tube"), Choice(description: "Crouch under desk", nextStoryThing: storyThing(text: "You move the chairs, looking under the table and in every nook and cranny. It seems as if your time spent searching was pointless until you find small indentation in the arm rest of the last chair. The object inside is pushed deep into the indent.", choice: [Choice(description: "Gently attempt to remove the object"), Choice(description: "Forcibly tear open arm rest")], storyType: .decision))], storyType: .decision)
    @Published var stealthStatus = 0
//    storyThing(text: "The main floor is stark and unfeeling. A simulation of a receptionist sits behind the desk. It's after hours so the program doesn’t appear to be active. All that is in the room is a painting on the wall and a monstera plant tucked into the corner.", choice: [Choice(description: "Investigate the receptionist", type: .decision), Choice(description: "Look closer at the picture", type: .decision), Choice(description: "Investigate the plant", type: .decision, nextStoryThing: storyThing(text: "A picture of two people smiling outside of a small building. Living Innovations is marked on the sign above them. A muscle bound man with soft eyes and salt n’ pepper hair stands next to a rigid and thing woman with jet black curly hair tossed into a messy bun giving a slight smile. ", choice: [Choice(description: "Step away from painting", type: .decision)]))])
    
    var choices:[Choice] {
        if let choices = currentRoom.choices {
            return choices
        } else {
            return []
        }
    }
    @Published var selectedItem = Item()
    //    @Published var roomDialog:String
    //chara dialog stuff
    @Published var charaDialogCount  = 0
    @Published var charaDialog = [""]
    @Published var charaText = ""
    //chara dialog stuff
    
    
    private let randomNumbersInAnArray = [1.0,14.0,7.0]
    
    func useItem(item:Item){
        player.inventory.removeAll { inventoryItem in
            inventoryItem.id == item.id
        }
    }
    
    func addRisk(){
        print("\(progress)")
        progress += randomNumbersInAnArray[Int.random(in: 1..<randomNumbersInAnArray.count)]
        print("\(progress)")
    }
    func theStairs() {
        currentRoom.stairs()
    }
    
    func changeLookOfRoom() {
        if roomCounter == .four {
            roomCounter = .five
            self.theStairs()
            return
        }
        let previousRoom = currentRoom
        while currentRoom == previousRoom {
            currentRoom.move()
        }
        roomCounter.toggle()
    }
    
    
    init() {
        self.currentRoom = Room.rooms[0]
        self.player = .player
        self.trash = .init(itemsInTrash: [])
        self.roomCounter = .zero
    }
}
