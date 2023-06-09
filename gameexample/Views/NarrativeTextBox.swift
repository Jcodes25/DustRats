//
//  NarrativeTextBox.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/9/23.
//

import SwiftUI

struct NarrativeTextBox: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        VStack{
            Text("\(vm.roomDialog.text)")
            Spacer()
            ForEach(vm.roomDialog.choice){ thing in
                Button(){
                    vm.roomDialog = thing.nextStoryThing ?? storyThing(text: "", choice: [])
                } label:{
                    Text(thing.description)
                }
                
            }
        }.frame(height:200)
       
    }
}

struct NarrativeTextBox_Previews: PreviewProvider {
    static var previews: some View {
        NarrativeTextBox()
    }
}
