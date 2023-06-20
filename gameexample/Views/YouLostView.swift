//
//  YouLostView.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/16/23.
//

import SwiftUI

struct YouLostView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        VStack{
            
            Text("You Lost").foregroundColor(.white)
            Button("Restart"){
                vm.roomDialog   =
            storyThing(text: "You have twotwotwotwotwotwotwotwotwotwotwotow choices", choice:
                        [Choice(description: "Plant", item: Item(itemImg: "plant", itemName: "Plant", itemDescription: "What made you wanna take a plant, you don't need the plant, this is useless.")), Choice(description: "Key Card Thing", item: Item(itemImg: "keycardpic", itemName: "Da Keycard 😱", itemDescription: "You can go wherever you want now !!!"))],
                       storyType: .item)
                vm.stealthStatus = 0
            }
           
        }.frame(width: 400, height:760).background(.black)
        
    }
}

struct YouLostView_Previews: PreviewProvider {
    static var previews: some View {
        YouLostView()
    }
}
