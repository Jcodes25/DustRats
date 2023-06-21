//
//  CharaTextView.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 5/31/23.
//

import SwiftUI

struct CharaTextView: View {
    @ObservedObject var vm: ViewModel
    @State var charaText = "placeholder for now"
    @State var testForButtonInPreview = false
    var body: some View {
        Section{
            Section{
                ZStack{
                    Image("CharacterDialogTextBox").resizable().aspectRatio(contentMode: .fit)
                        .frame(width:350)
                    Image("\(vm.currentRoom.personInRoom?.portrait ?? "")").resizable().scaledToFit().clipShape(Path{ path in
                        let width: CGFloat = 402
                        let height: CGFloat = 425
                        //top top left
                        path.move(
                            to: CGPoint(
                                x: 0.13 * width,
                                y: 0 * height
                            )
                        )
                        //top top right
                        path.addLine(
                            to: CGPoint(
                                x: 1.01 * width,
                                y: 0 * height)
                        )
                        //top top right
                        path.addLine(
                            to: CGPoint(
                                x: 1.06 * width,
                                y: 0.02 * height)
                        )
                        // botttom top right
                        path.addLine(
                            to: CGPoint(
                                x: 1.06 * width,
                                y: 0.98 * height)
                        )
        
                        //bottom bottom right
                        path.addLine(
                            to: CGPoint(
                                x: 1.01 * width,
                                y: 1 * height)
                        )
        
                        //bottom bottom left
                        path.addLine(
                            to: CGPoint(
                                x: 0.15 * width,
                                y: 1 * height)
                        )
                        //bottom top left
                        path.addLine(
                            to: CGPoint(
                                x: 0.1 * width,
                                y: 0.98 * height)
                        )
                        //top bottom left
                        path.addLine(
                            to: CGPoint(
                                x: 0.09 * width,
                                y: 0.02 * height)
                        )
        
                        path.closeSubpath()
                    }.offset(x:-50)).offset(y:-100)
                   
                    Image("RectangleInside").resizable().aspectRatio(contentMode: .fit)
                        .frame(width:320)
                        
                   
                    VStack(alignment: .leading,spacing: 0){
                        Text(":::\(vm.currentRoom.personInRoom?.nameOfPerson ?? "Can't get the name"):::").frame(width:140).font(.custom(
                            "ChakraPetch-Light",
                            fixedSize: 16)).foregroundColor(.white)
                        Text("\(vm.currentRoom.personInRoom?.dialog[vm.charaDialogCount] ?? "placeholder hehe")").frame(width:270, height:40).font(.custom(
                            "ChakraPetch-Light",
                            fixedSize: 18))
                        .foregroundColor(.white)
                    }.padding(20)
                    
                }
                .frame(height:600)
               
                
            }.frame(height:200)
            
           
            
          //  if charaText == ""{
                
                
          //  }
            
        }.onTapGesture {
            
            /// (just a thought) might want to add an indicator to prevent people accidently reading things over and over again
                print("thing has been tapped")
            guard vm.charaDialogCount < (vm.currentRoom.personInRoom?.dialog.count ?? 0)-1 else{
                print("this part")
                vm.charaDialogCount = 0

                return
            }
            print("uhaha")
            vm.charaDialogCount += 1
            print("\(vm.charaDialogCount)")


            
        }
    }
}

struct CharaTextView_Previews: PreviewProvider {
    static var previews: some View {
        CharaTextView(vm: ViewModel())
    }
}
