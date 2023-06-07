//
//  PlayerStats.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 6/6/23.
//

import SwiftUI

struct PlayerStats: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
           
          //  Image("\(vm.currentRoom.roompic)")
            Section{
                let path = Path { path in
                    let width: CGFloat = 342
                    let height: CGFloat = 765
                    //top top left
                    path.move(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 1.07 * height
                        )
                    )
                    //top top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.1 * width,
                            y: 1.07 * height)
                    )
                    //top bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.12 * width,
                            y: 1.08 * height)
                    )
                    // botttom top right
                    path.addLine(
                        to: CGPoint(
                            x: 1.12 * width,
                            y: 1.112 * height)
                    )

                    //bottom bottom right
                    path.addLine(
                        to: CGPoint(
                            x: 1.1 * width,
                            y: 1.12 * height)
                    )

                    //bottom bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.35 * width,
                            y: 1.12 * height)
                    )
                    //bottom top left
                    path.addLine(
                        to: CGPoint(
                            x: 0.33 * width,
                            y: 1.111 * height)
                    )
                    //top bottom left
                    path.addLine(
                        to: CGPoint(
                            x: 0.33 * width,
                            y: 1.08 * height)
                    )

                    path.closeSubpath()
                }
                path.fill(Color("InsideTextBoxColor"))
                    .overlay(path.stroke(Color("BorderTextBox"), lineWidth: 2))
            }.offset(x:14)
            
          //  ZStack{
            
//--------------------------------------------------------
                VStack{

                    Spacer().frame(height:750)

                    HStack{
                        ZStack(alignment: .leading){
                            Image("portraitbackground")
                            Image("coolperson")
                        }.offset(y:-22)

                        //Spacer().frame(width:46)
                        Section{
                            Spacer().frame(width: 10)
                            Text("STR:10").foregroundColor(.orange)
                            Text("CHA:10").foregroundColor(.orange)
                            Text("INT:10").foregroundColor(.orange)
                            Text("LCK:10").foregroundColor(.orange)
                        }

                    }
                }
            
            
            //-------------------
            VStack{
                
            }
         
            VStack{
                Spacer().frame(height:659)
                HStack{
                    Spacer().frame(width:80)
                    StealthBarView()
                    Spacer().frame(width:50)
                    Button{
                        print("was: \(vm.showInventory)")
                        vm.showInventory.toggle()
                        print("is: \(vm.showInventory)")
                    }label: {
                        Image("inventorybuttonpic")
                    }


                }

            }
            
                
           // }
          
        }
      
    }
}

struct PlayerStats_Previews: PreviewProvider {
    static var previews: some View {
        PlayerStats()
    }
}
