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
          return  "roomCounter1"
        case .one:
          return  "roomCounter2"
        case .two:
          return  "roomCounter3"
        case .three:
          return  "roomCounter4"
        case .four:
          return  "roomCounter5"
        case .five:
          return  "roomCounter6"
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

