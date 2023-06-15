//
//  ProgressBarView.swift
//  gameexample
//
//  Created by Tyson Laroyce Walker II on 5/30/23.
//

import SwiftUI

struct StealthBarView: View {
    @StateObject var vm = ViewModel()
    @State private var progress: Double = 0.0
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    func addToTheThing(){
        progress += 1.0
    }
    var body: some View {

        Section{
            Image("\(vm.barurl)").resizable().aspectRatio(contentMode: .fit).onTapGesture{
                            print("this is working kinda")
                            vm.barurl = vm.randomStatusArray.randomElement()!.description
                        }
        }.frame(height: 40)
        
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        StealthBarView()
    }
}



