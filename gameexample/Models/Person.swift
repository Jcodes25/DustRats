//
//  Person.swift
//  gameexample
//
//  Created by Cory Tripathy on 5/30/23.
//

import Foundation
import SwiftUI

//TODO: Make struct
struct Person: Identifiable, Equatable{
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.dialog == rhs.dialog
    }
    
    let id = UUID()
    public var hp: Int?
    public var portrait: String?
    public var dialog:[String]
    public var dialog2:[String]?
    public var inventory:[Item]
    public var choice:String?
    public var nameOfPerson:String?
    
    //TODO: make these actually work and stuff
    public var strength: Int = 0
    public var charisma: Int = 0
    public var intelligence: Int = 0
    public var luck: Int = 0
    //TODO: initialize the stats
    init(hp:Int? = nil, portrait:String?, dialog:[String],inventory:[Item], dialog2:[String], choice:String?, nameOfPerson:String?, strength:Int, charisma: Int, intelligence:Int, luck:Int){
        self.hp = hp
        self.portrait = portrait
        self.dialog = dialog
        self.inventory = inventory
        self.dialog2 = dialog2
        self.nameOfPerson = nameOfPerson
        self.strength = strength
        self.charisma = charisma
        self.intelligence = intelligence
        self.luck = luck
    }
    static let playersItems = [Item(itemImg: "column",itemName: "column",itemDescription: "This beautiful column is used to open up doors and stuff thats about it"),Item(itemImg: "BucketofCheeseBallz",itemName: "Bucket of Cheese Ballz",itemDescription: "So delicious...just eat the whole thing"), Item(itemImg: "keycardpic", itemName: "Da Keycard 😱", itemDescription: "You can go wherever you want now !!!")]
    
    static let player = Person(hp: 100, portrait: "botaningame", dialog: [], inventory: playersItems, dialog2: [], choice: nil, nameOfPerson: nil,strength: 10, charisma: 10, intelligence: 10, luck: 10)
    
    
}
