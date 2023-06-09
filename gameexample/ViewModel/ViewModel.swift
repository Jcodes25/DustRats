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
    @Published var roomCounter: roomCount
    @Published var randomStatusArray = [StealthStatus.zero, StealthStatus.one, StealthStatus.three, StealthStatus.four, StealthStatus.five, StealthStatus.six, StealthStatus.seven, StealthStatus.eight]
    @Published var barurl = "Stealth_0"
    @Published var roomDialog = storyThing(text: "The main floor is stark and unfeeling. A simulation of a receptionist sits behind the desk. It's after hours so the program doesn’t appear to be active. All that is in the room is a painting on the wall and a monstera plant tucked into the corner.", choice: [Choice(description: "Investigate the receptionist", type: .decision), Choice(description: "Look closer at the picture", type: .decision), Choice(description: "Investigate the plant", type: .decision, nextStoryThing: storyThing(text: "A picture of two people smiling outside of a small building. Living Innovations is marked on the sign above them. A muscle bound man with soft eyes and salt n’ pepper hair stands next to a rigid and thing woman with jet black curly hair tossed into a messy bun giving a slight smile. ", choice: [Choice(description: "Step away from painting", type: .decision)]))])
    enum StealthStatus{
        case zero, one, two, three, four, five, six, seven, eight, nine, ten
        
    }
    enum roomCount{
        case zero, one, two, three, four, five
        
        mutating func toggle() {
            switch self {
            case .zero:
                self = .one
            case .one:
                self = .two
            case .two:
                self = .three
            case . three:
                self = .four
            case .four:
                self = .five
            case .five:
                self = .zero
            }
        }
    }
    func riskMeterDisplay(status: StealthStatus ) -> String{
        if status == .zero{
            return "Stealth_0"
        } else if status == .one {
            return "Stealth_1"
        } else if status == .two {
            return "Stealth_2"
        } else if status == .three {
            return "Stealth_3"
        } else if status == .four {
            return "Stealth_4"
        } else if status == .five {
            return "Stealth_5"
        } else if status == .six {
            return "Stealth_6"
        } else if status == .seven {
            return "Stealth_7"
        } else if status == .eight {
            return "Stealth_8"
        } else if status == .nine {
            return "Stealth_9"
        } else{
            return "Stealth_10"
        }
    }
    
    func roomCounterDisplay(position: roomCount) -> String {
        if position == .zero {
            return "roomCounter1"
        } else if position == .one {
            return "roomCounter2"
            } else if position == .two {
            return "roomCounter3"
            } else if position == .three {
            return "roomCounter4"
            } else if position == .four{
            return "roomCounter5"
            } else {
                return "roomCounter6"
            }
        }
    
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
