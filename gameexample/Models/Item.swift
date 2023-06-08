//
//  Item.swift
//  gameexample
//
//  Created by Cory Tripathy on 5/30/23.
//

import Foundation

// TODO: Make struct

struct Item: Identifiable {
    
    let id = UUID()
    public var itemImg:String?
    public var itemName:String?
    public var itemDescription:String?
    public var effectOfTheItem:Effect?
    public var effectEffeciency: Int?

    
    
//    init(itemImg: String? = nil, itemName: String? = nil, itemDescription: String? = nil) {
//        self.itemImg = itemImg
//        self.itemName = itemName
//        self.itemDescription = itemDescription
//    }
    

    
   
    
    static let items: [Item] = [Item(itemImg: "Bread", itemName: "Bread", itemDescription: "It's just Bread...", effectOfTheItem: .stealth, effectEffeciency: 1), Item(itemImg: "coffeecup", itemName: "Koffee", itemDescription: "Get energized with our new invention... A Cup O' Joe", effectOfTheItem: .strength, effectEffeciency: 2)]
//    Item(itemImg: "", itemName: "here", itemDescription: ""), Item(itemImg: "", itemName: "we", itemDescription: ""), Item(itemImg: "", itemName: "go", itemDescription: ""), Item(itemImg: "", itemName: "son", itemDescription: ""), Item(itemImg: "", itemName: "yep", itemDescription: "")]
}

enum Effect {
    case strength, charisma, intelligence, luck, stealth
}

func effectOfItem(item: Item){
    var vm = ViewModel()
    if item.effectOfTheItem == .strength{
        print(vm.player.strength)
        vm.player.strength += item.effectEffeciency ?? 1
        print(vm.player.strength)
    }else if item.effectOfTheItem == .charisma{
        vm.player.charisma += item.effectEffeciency ?? 0
    } else if item.effectOfTheItem == .luck{
        vm.player.Luck += item.effectEffeciency ?? 0
    }else{
        vm.player.intelligence += item.effectEffeciency ?? 0
    }
    
}
