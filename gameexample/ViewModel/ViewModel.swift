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
    storyThing(text: "You have twotwotwotwotwotwotwotwotwotwotwotow choices", choice:
                [Choice(description: "Plant", item: Item(itemImg: "plant", itemName: "Plant", itemDescription: "What made you wanna take a plant, you don't need the plant, this is useless.")), Choice(description: "Key Card Thing", item: Item(itemImg: "keycardpic", itemName: "Da Keycard 😱", itemDescription: "You can go wherever you want now !!!"))],
               storyType: .item)
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
