//
//  RoomCount.swift
//  DustRats
//
//  Created by Jordan Barconey on 6/7/23.
//

import Foundation
enum RoomCount{
    case zero, one, two, three, four, five
    var position: String {
        switch self {
        case .zero:
          return  "roomCounter0"
        case .one:
          return  "roomCounter1"
        case .two:
          return  "roomCounter2"
        case .three:
          return  "roomCounter3"
        case .four:
          return  "roomCounter4"
        case .five:
          return  "roomCounter5"
        }
    }
    
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

