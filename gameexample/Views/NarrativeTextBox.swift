//
//  NarrativeTextBox.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/9/23.
//

import SwiftUI

struct NarrativeTextBox: View {
    @StateObject var vm = ViewModel()
    @State var textFromTheThing = ViewModel().roomDialog?.text
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
           // Image("\(vm.currentRoom.roompic)")
            
          
                NarrativeBackground(vm:vm)
          
            
            
            VStack{
                Spacer().frame(height:274)
               // Section{
                   
                    ScrollView{
                        Text(vm.roomDialog?.text ?? "").font(.custom(
                            "ChakraPetch-Bold",
                            fixedSize: 18)).padding().foregroundColor(.white)
                    }
                   
             //   }
                    .frame(width:320, height:222)
             
              //  Spacer()
                HStack{
//                    ForEach(vm.roomDialog.choice){ thing in
//                        Button(){
//                            vm.roomDialog = thing.nextStoryThing ?? storyThing(text: "", choice: [])
//                        } label:{
//                            Text(thing.description)
//                        }
//
//                    }
                    HStack{
                        ForEach(vm.roomDialog?.choice ?? []){ thing in
                            Button{
                                
                               // vm.player.strength += 1
                                if (thing.nextStoryThing != nil){
                                    vm.roomDialog = thing.nextStoryThing ?? storyThing(text: "", choice: [], storyType: .decision)
                                }else{
                                    vm.roomDialog = nil
                                }
                                vm.player.inventory.append(Item(itemImg: thing.item?.itemImg, itemName: thing.item?.itemName, itemDescription: thing.item?.itemDescription))
                                vm.stealthStatus += 1
//                                print(vm.stealthStatus)
//                                print("\(vm.roomDialog?.text)")
                                print(thing.image)
                                print("\(vm.player.strength)")

                            } label:{
                                VStack(spacing: -16){
                                    Text("\(thing.description)").font(.custom(
                                        "ChakraPetch-Bold",
                                        fixedSize: 18)).padding().foregroundColor(.white)
                                    Image("\(thing.item?.itemImg ?? "unknownshinyitem")").resizable().aspectRatio(contentMode: .fit)
                                    
                                }
                            }
                           
                        }
//                        VStack(spacing: -16){
//                            Text("Name of item").font(.custom(
//                                "ChakraPetch-Bold",
//                                fixedSize: 18)).padding().foregroundColor(.white)
//                            Image("column").resizable().aspectRatio(contentMode: .fit)
//
//                        }
//                        VStack(spacing: -16){
//                            Text("Name of item").font(.custom(
//                                "ChakraPetch-Bold",
//                                fixedSize: 18)).padding().foregroundColor(.white)
//                            Image("column").resizable().aspectRatio(contentMode: .fit)
//
//                        }
                    }.frame(width:400, height:200).offset(y:-15)
                  
                }
                
            }.frame(width:320, height:300)
        }
        
       
    }
}

struct NarrativeTextBox_Previews: PreviewProvider {
    static var previews: some View {
        NarrativeTextBox()
    }
}
