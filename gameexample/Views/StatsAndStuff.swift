//
//  StatsAndStuff.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/14/23.
//

import SwiftUI

struct StatsAndStuff: View {
    @ObservedObject var vm: ViewModel
    
    var str: Int {
        vm.player.strength
    }
    
    var cha: Int {
        vm.player.charisma
    }
    var int: Int {
        vm.player.intelligence
    }
    var luck: Int {
        vm.player.luck
    }
    var body: some View {
        Section{
            HStack{
                Spacer().frame(width: 10)
                Text("STR:\(str)")
                    .foregroundColor(.orange)
                Text("CHA:\(cha)").foregroundColor(.orange)
                Text("INT:\(int)").foregroundColor(.orange)
                Text("LCK:\(luck)").foregroundColor(.orange)
            }
           
        }
    }
    init(_ vm: ViewModel) {
        self.vm = vm
    }
}

struct StatsAndStuff_Previews: PreviewProvider {
    static var previews: some View {
        StatsAndStuff(ViewModel())
    }
}
