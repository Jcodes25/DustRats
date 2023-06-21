//
//  Path+Extension.swift
//  DustRats
//
//  Created by Jordan Barconey on 6/15/23.
//

import Foundation
import SwiftUI

extension Path {
    static let leftDoor = Path { path in
        let width: CGFloat = 342
        let height: CGFloat = 765
        //top right
        path.move(
            to: CGPoint(
                x: 0.31 * width,
                y: 0.35 * height
            )
        )
       
        // botttom  right
        path.addLine(
            to: CGPoint(
                x: 0.3 * width,
                y: 0.69 * height)
        )

        //bottom left
        path.addLine(
            to: CGPoint(
                x: 0.1 * width,
                y: 0.8 * height)
        )
        //top  left
        path.addLine(
            to: CGPoint(
                x: 0.1 * width,
                y: 0.25 * height)
        )

        path.closeSubpath()
    }
    static let centerDoor = Path { path in
        let width: CGFloat = 342
        let height: CGFloat = 765
        //top right
        path.move(
            to: CGPoint(
                x: 0.678 * width,
                y: 0.40 * height
            )
        )
       
        // botttom  right
        path.addLine(
            to: CGPoint(
                x: 0.678 * width,
                y: 0.59 * height)
        )

        //bottom left
        path.addLine(
            to: CGPoint(
                x: 0.50 * width,
                y: 0.59 * height)
        )
        //top  left
        path.addLine(
            to: CGPoint(
                x: 0.50 * width,
                y: 0.40 * height)
        )

        path.closeSubpath()
    }
    static let rightDoor = Path { path in
        let width: CGFloat = 342
        let height: CGFloat = 765
        //top right
        path.move(
            to: CGPoint(
                x: 1.089 * width,
                y: 0.25 * height
            )
        )
       
        // botttom  right
        path.addLine(
            to: CGPoint(
                x: 1.13 * width,
                y: 0.839 * height)
        )

        //bottom left
        path.addLine(
            to: CGPoint(
                x: 0.88 * width,
                y: 0.70 * height)
        )
        //top  left
        path.addLine(
            to: CGPoint(
                x: 0.88 * width,
                y: 0.35 * height)
        )

        path.closeSubpath()
    }
    static let elevatorPath = Path{ elevatorPath in
        let width: CGFloat = 400
        let height: CGFloat = 600
        elevatorPath.move(
            to: CGPoint(
                x: 0.7 * width,
                y: 0.25 * height
            )
        )
        
        elevatorPath.addLine(
            to: CGPoint(
                x: 0.7 * width,
                y: 0.8 * height
            )
        )
        
        elevatorPath.addLine(
            to: CGPoint(
                x: 0.1 * width,
                y: 0.8 * height
            )
        )
        
        elevatorPath.addLine(
            to: CGPoint(
                x: 0.1 * width,
                y: 0.25 * height)
        )
        
        elevatorPath.closeSubpath()
    }
}
