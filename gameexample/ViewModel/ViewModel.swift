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
    @Published var randomStatusArray = [StealthStatus.zero, StealthStatus.one, StealthStatus.three, StealthStatus.four, StealthStatus.five, StealthStatus.six, StealthStatus.seven, StealthStatus.eight]
    @Published var barurl = "Stealth_0"
    @Published var roomDialog: Event
    
//    var choices:[Choice] {
//        if let choices = currentRoom.choices {
//            return choices
//        } else {
//            return []
//        }
//    }
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
        self.roomDialog = Event.events[0]
    }
}
