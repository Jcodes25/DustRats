//
//  NarrativeBackground.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/12/23.
//

import SwiftUI

struct NarrativeBackground: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
         //   Image("\(vm.currentRoom.roompic)")
            Section{
                let path = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 765
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.15 * width,
                            y:0.452 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.15 * width,
                            y: 0.452 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.17 * width,
                            y: 0.46 * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.17 * width,
                            y: 0.97 * height)
                    )

                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.15 * width,
                            y: 0.981 * height)
                    )

                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.15 * width,
                            y: 0.981 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x: 0.13 * width,
                            y:  0.97 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.13 * width,
                            y: 0.46 * height)
                    )

                    path.closeSubpath()
                }
                path.fill(Color("InsideTextBoxColor"))
                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
            }
            Section{
                let path2 = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 765
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.22 * width,
                            y: 0.5 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.08 * width,
                            y: 0.5 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.11 * width,
                            y: 0.511 * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.11 * width,
                            y: 0.79 * height)
                    )

                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x:  1.08 * width,
                            y: 0.8 * height)
                    )

                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.22 * width,
                            y: 0.8 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x:0.20 * width,
                            y:  0.79 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.20 * width,
                            y: 0.511 * height)
                    )

                    path.closeSubpath()
                }
                    path2.fill(Color("InsideTextBoxColor"))
                    .overlay(path2.stroke(Color("BorderTextBox"), lineWidth: 2))
            }
        }
        
        
    }
}

struct NarrativeBackground_Previews: PreviewProvider {
    static var previews: some View {
        NarrativeBackground()
    }
}
