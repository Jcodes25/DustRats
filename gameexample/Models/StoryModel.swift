//
//  StoryModel.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/9/23.
//

import Foundation

class storyThing : ObservableObject {
    var id = UUID()
    var text: String
    var choice: [Choice]
    
    init(text: String, choice: [Choice]) {
        self.text = text
        self.choice = choice
    }
}
