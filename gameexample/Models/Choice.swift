//
//  Choice.swift
//  gameexample
//
//  Created by Cory Tripathy on 5/30/23.
//

import Foundation

struct Choice:Identifiable{
    let id = UUID()
    var description:String
    var image: String?
    var item: Item?
    var nextStoryThing: storyThing?
    var statIncrease: SIThingy?
}


enum SIThingy{
    case str, cha, int, lck, strd
}
