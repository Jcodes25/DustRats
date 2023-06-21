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
//        Section{
            HStack{
                Text("STR:\(str)").foregroundColor(Color("StatColor")).font(.custom("Courier Prime Code", size: 14))
                Text("CHA:\(cha)").foregroundColor(Color("StatColor")).font(.custom("Courier Prime Code", size: 14))
                Text("INT:\(int)").foregroundColor(Color("StatColor")).font(.custom("Courier Prime Code", size: 14))
                Text("LCK:\(luck)").foregroundColor(Color("StatColor")).font(.custom("Courier Prime Code", size: 14))

            } .background {
                Image("StatText")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(-16.5)
            }
                
           
//        }
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
