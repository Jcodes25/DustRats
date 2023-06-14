//
//  StatsAndStuff.swift
//  DustRats
//
//  Created by Tyson Laroyce Walker II on 6/14/23.
//

import SwiftUI

struct StatsAndStuff: View {
    @State var str = Person.player.strength
    @State var cha = 0
    @State var int = 0
    @State var luck = 0
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
}

struct StatsAndStuff_Previews: PreviewProvider {
    static var previews: some View {
        StatsAndStuff()
    }
}
