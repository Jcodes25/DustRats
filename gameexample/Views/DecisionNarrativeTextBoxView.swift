//
//  DecisionNarrativeTextBoxView.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/12/23.
//

import SwiftUI

struct DecisionNarrativeTextBoxView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
            Image("\(vm.currentRoom.roompic)")
            Section{
                let path = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 765
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.3  * width,
                            y: 0.128 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.08 * width,
                            y: 0.128 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.13 * width,
                            y: 0.15  * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.13 * width,
                            y: 0.84 * height)
                    )
    
                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.08 * width,
                            y: 0.87 * height)
                    )
    
                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.3 * width,
                            y: 0.87 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x: 0.26 * width,
                            y: 0.84 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x:0.26 * width,
                            y: 0.15 * height)
                    )
    
                    path.closeSubpath()
                }
                path.fill(Color("InsideTextBoxColor"))
                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                   
            }.frame(width:400, height:750)
            Section{
                let path = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 765
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.4 * width,
                            y: 0.15 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.08 * width,
                            y: 0.15 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.13 * width,
                            y: 0.18 * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.13 * width,
                            y: 0.6 * height)
                    )
    
                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.08 * width,
                            y: 0.63 * height)
                    )
    
                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.4 * width,
                            y: 0.63 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 0.6 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 0.18 * height)
                    )
    
                    path.closeSubpath()
                }
                path.fill(Color("InsideTextBoxColor"))
                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                   
            }.frame(width:400, height:750)
             //.background(.blue)
                .offset(x:-15)
                      
        }.frame(height:758)
    }
}

struct DecisionNarrativeTextBoxView_Previews: PreviewProvider {
    static var previews: some View {
        DecisionNarrativeTextBoxView()
    }
}
