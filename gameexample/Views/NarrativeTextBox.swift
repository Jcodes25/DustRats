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
            Text("\(vm.roomDialog.story.text)")
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.white)
                .padding(12)
                .background(Image("thetextoend")
                    .resizable()
                    .aspectRatio(contentMode: .fill))
                
            Spacer()
            ForEach(vm.roomDialog.story.choice){ thing in
                Button(){
                    vm.roomDialog = Event(name: thing.nextStoryThing?.text ?? "nil", story: thing.nextStoryThing ?? storyThing(text: "", choice: []), items: [])
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
