//
//  Doors.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 6/6/23.
//

import SwiftUI

struct Doors: View {
    @ObservedObject var vm: ViewModel
    var doorOptions: [DoorOptions] { vm.currentRoom.doors }
    var body: some View {
        ZStack(alignment:  Alignment(horizontal: .center, vertical: .center)){
            //  Image("\(vm.currentRoom.roompic)")
            Section{
                ForEach(doorOptions) { doorOption in
                    doorOption.door.fill(.white)
                        .opacity(0.01)
                        .onTapGesture {
                        vm.changeLookOfRoom()
                        vm.roomDialog = vm.currentRoom.storyThingFromRoom ?? nil
                        if vm.currentRoom.roompic == "stairs"{
                            vm.stealthStatus = 0
                        }
                    }
                }
                .frame(width:400, height:750)
            }
            
        }
    }
    init(vm: ViewModel) {
        self.vm = vm
    }
}

struct Doors_Previews: PreviewProvider {
    static var previews: some View {
        Doors(vm: ViewModel())
    }
}

