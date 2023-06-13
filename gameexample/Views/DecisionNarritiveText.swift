//
//  DecisionNarritiveText.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/12/23.
//

import SwiftUI

struct DecisionNarritiveText: View {
    var body: some View {
        @StateObject var vm = ViewModel()
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
                                if (thing.nextStoryThing != nil){
                                    vm.roomDialog = thing.nextStoryThing ?? storyThing(text: "", choice: [])
                                }else{
                                    vm.roomDialog = nil
                                }
                                
                                
                                print("\(vm.roomDialog?.text)")
                            } label:{
                                VStack(spacing: -16){
                                    Text("\(thing.description)").font(.custom(
                                        "ChakraPetch-Bold",
                                        fixedSize: 18)).padding().foregroundColor(.white)
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
                
            }.frame(width:320, height:300).offset(x:41)
        }
        
       
    }
}

struct DecisionNarritiveText_Previews: PreviewProvider {
    static var previews: some View {
        DecisionNarritiveText()
    }
}
