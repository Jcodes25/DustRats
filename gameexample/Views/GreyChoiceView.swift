//
//  GreyChoiceView.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/13/23.
//

import SwiftUI

struct GreyChoiceView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        //ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
//            Image("\(vm.currentRoom.roompic)")
            Section{
                let path = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 625
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 1.00 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.1 * width,
                            y: 1.00 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.12 * width,
                            y: 1.01 * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.12 * width,
                            y: 1.09 * height)
                    )

                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.1 * width,
                            y: 1.1 * height)
                    )

                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 1.1 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x: 0.33 * width,
                            y: 1.09 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.33 * width,
                            y: 1.01 * height)
                    )

                    path.closeSubpath()
                }
                path.fill(Color("darkGrayBox"))
                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                    .offset(x:-50,y:-600)
            }
        //}
       
    }
}

struct GreyChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        GreyChoiceView()
    }
}



//Section{
//    let path = Path { path in
//        let width: CGFloat = 342
//        let height: CGFloat = 765
//        //top top left
//        path.move(
//            to: CGPoint(
//                x: 0.35 * width,
//                y: 1.00 * height
//            )
//        )
//        //top top right
//        path.addLine(
//            to: CGPoint(
//                x: 1.1 * width,
//                y: 1.00 * height)
//        )
//        //top bottom right
//        path.addLine(
//            to: CGPoint(
//                x: 1.12 * width,
//                y: 1.01 * height)
//        )
//        // botttom top right
//        path.addLine(
//            to: CGPoint(
//                x: 1.12 * width,
//                y: 1.09 * height)
//        )
//
//        //bottom bottom right
//        path.addLine(
//            to: CGPoint(
//                x: 1.1 * width,
//                y: 1.1 * height)
//        )
//
//        //bottom bottom left
//        path.addLine(
//            to: CGPoint(
//                x: 0.35 * width,
//                y: 1.1 * height)
//        )
//        //bottom top left
//        path.addLine(
//            to: CGPoint(
//                x: 0.33 * width,
//                y: 1.09 * height)
//        )
//        //top bottom left
//        path.addLine(
//            to: CGPoint(
//                x: 0.33 * width,
//                y: 1.01 * height)
//        )
//
//        path.closeSubpath()
//    }
//    path.fill(Color("InsideTextBoxColor"))
//        .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
//        .offset(y:-100)
//}
