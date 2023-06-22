//
//  DecisionNarritiveText.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/12/23.
//

import SwiftUI

struct DecisionNarritiveText: View {
    @StateObject var vm = ViewModel()
  //  @State var textFromTheThing = ViewModel().roomDialog?.text
    var body: some View {
      
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
           // Image("\(vm.currentRoom.roompic)")
            
          
            DecisionNarrativeTextBoxView(vm:vm)
            
            
            VStack{
                Spacer().frame(height:10)
               // Section{
                   
                    ScrollView{
                        Text(vm.roomDialog?.text ?? "").font(.custom(
                            "ChakraPetch-Bold",
                            fixedSize: 18)).padding().foregroundColor(.white)
                            
                    }
                   
             //   }
                    .frame(width:280, height:300)
             
              //  Spacer()
                HStack{

                    VStack{
                        ForEach(vm.roomDialog?.choice ?? []){ thing in
                            Button{
                                if thing.item != nil{
                                    vm.player.inventory.append(Item(itemImg: thing.item?.itemImg, itemName: thing.item?.itemName, itemDescription: thing.item?.itemDescription))
                                }
                                if (thing.nextStoryThing != nil){
                                    vm.roomDialog = thing.nextStoryThing ?? storyThing(text: "", choice: [], storyType: .decision)
                                }else{
                                    vm.roomDialog = nil
                                }
                                
                                if thing.statIncrease == .int{
                                    vm.player.intelligence += 1
                                }else if (thing.statIncrease == .cha ) {
                                    vm.player.charisma += 1
                                }else if (thing.statIncrease == .str){
                                    vm.player.strength += 1
                                }else if thing.statIncrease == .lck{
                                    vm.player.luck += 1
                                }else if thing.statIncrease == .strd{
                                    vm.player.strength -= 1
                                }
                                
//                                vm.currentRoom.storyThingFromRoom?.storyType == .youGotCaught{
//                                    
//                                }
                            }label:{
                               
                                ZStack{
                                    GreyChoiceView()
                                    
                                        
                                    
                                    Text("\(thing.description)").font(.custom(
                                        "ChakraPetch-Light",
                                        fixedSize: 18)).padding().foregroundColor(Color("DialogChoicesColor"))
                                        .frame(width:270, height:80).offset(y:14)
                                    }.frame(height:70)
                                   
                                
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
                    }.frame(width:400, height:200).offset(y:-17)
                  
                }
                
            }.frame(width:320, height:300).offset(x:41)
        }
        
       
    }
}

struct DecisionNarritiveText_Previews: PreviewProvider {
    static var previews: some View {
        DecisionNarritiveText()
    }
}
