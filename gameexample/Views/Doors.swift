//
//  Doors.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 6/6/23.
//

import SwiftUI

struct Doors: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
          //  Image("\(vm.currentRoom.roompic)")
            Section{
                let path = Path { path in
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
                path.fill(.white)
                    .opacity(0.01)
//                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
//                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                    .onTapGesture{
                        vm.changeLookOfRoom()
                        vm.roomDialog = vm.currentRoom.storyThingFromRoom ?? nil
                        if vm.currentRoom.roompic == "stairs"{
                            vm.stealthStatus = 0
                        }
                    }
                   
                
                let path4 = Path { path in
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
                path4.fill(.white)
                    .opacity(0.01)
//                    .overlay(path4.stroke(Color("BorderTextBox"), lineWidth: 2))
//                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                    .onTapGesture{
                        vm.changeLookOfRoom()
                        vm.roomDialog = vm.currentRoom.storyThingFromRoom ?? nil
                        if vm.currentRoom.roompic == "stairs"{
                            vm.stealthStatus = 0
                        }
                    }
                   
                
                let path5 = Path { path in
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
                path5.fill(.white)
                    .opacity(0.01)
//                    .overlay(path5.stroke(Color("BorderTextBox"), lineWidth: 2))
//                    .shadow(color:Color("ShadowTextBox"), radius: 4)
                    .onTapGesture{
                        vm.changeLookOfRoom()
                        vm.roomDialog = vm.currentRoom.storyThingFromRoom ?? nil
                        if vm.currentRoom.roompic == "stairs"{
                            vm.stealthStatus = 0
                        }
                    }
                
                
                
            }.frame(width:400, height:750)
        }
        
    }
}

struct Doors_Previews: PreviewProvider {
    static var previews: some View {
        Doors()
    }
}
