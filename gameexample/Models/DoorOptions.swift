//
//  DoorOptions.swift
//  DustRats
//
//  Created by Jordan Barconey on 6/15/23.
//

import Foundation
import SwiftUI

enum DoorOptions: Identifiable {
    var id: UUID { return UUID() }
    case left, center, right, elevator
    var door: Path {
        switch self {
        case .left:
            return Path.leftDoor
        case .center:
            return Path.centerDoor
        case .right:
            return Path.rightDoor
        case .elevator:
            return Path.elevatorPath
        }
    }
}
