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
    @Published var player = Person(hp: 100, portrait: "botaningame", dialog: [], inventory: [Item(itemImg: "column",itemName: "column",itemDescription: "This beautiful column is used to open up doors and stuff thats about it"),Item(itemImg: "BucketofCheeseBallz",itemName: "Bucket of Cheese Ballz",itemDescription: "So delicious...just eat the whole thing")], dialog2: [], choice: nil, nameOfPerson: "why is there no  name",strength: 200 )
    @Published var trash: Trash
    @Published var progress: Double = 0.0
    @Published var showInventory: Bool = false
    @Published var roomCounter: RoomCount
    @Published var randomStatusArray = [StealthStatus.zero, StealthStatus.one, StealthStatus.three, StealthStatus.four, StealthStatus.five, StealthStatus.six, StealthStatus.seven, StealthStatus.eight]
    @Published var barurl = "Stealth_0"
    @Published var roomDialog: storyThing? = storyThing(text: "You went into the drawer thingy and you find 2 things which thing you wanna take you cant take both, this is a videogameYou went into the drawer thingy and you find 2 things which thing you wanna take you cant take both, this is a videogameYou went into the drawer thingy and you find 2 things which thing you wanna take you cant take both, this is a videogameYou went into the drawer thingy and you find 2 things which thing you wanna take you cant take both, this is a videogame", choice: [Choice(description: "Here is more txt to take up more space", type: .item), Choice(description: "Item 1", type: .item), Choice(description: "Item 2", type: .item, nextStoryThing: storyThing(text: "This decision makes another story event congrats you did it", choice: [Choice(description: "Whatever", type: .decision)]))])
    
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
       // self.player = .player
        self.trash = .init(itemsInTrash: [])
        self.roomCounter = .zero
    }
}
