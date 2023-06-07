//
//  StealthBar.swift
//  DustRats
//
//  Created by Jordan Barconey on 6/7/23.
//

import Foundation

enum StealthStatus{
    case zero, one, two, three, four, five, six, seven, eight, nine, ten
    var description: String {
        switch self {
        case .zero:
            return "Stealth_0"
        case .one:
            return "Stealth_1"
        case .two:
            return "Stealth_2"
        case .three:
            return "Stealth_3"
        case .four:
            return "Stealth_4"
        case .five:
            return "Stealth_5"
        case .six:
            return "Stealth_6"
        case .seven:
            return "Stealth_7"
        case .eight:
            return "Stealth_8"
        case .nine:
            return "Stealth_9"
        case .ten:
            return "Stealth_10"
        }
    }
}
