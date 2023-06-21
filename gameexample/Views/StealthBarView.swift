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
            Image("\(vm.randomStatusArray[vm.stealthStatus].description)").resizable().aspectRatio(contentMode: .fit).onTapGesture{
                print("this is working kinda \(vm.stealthStatus)")
                
//                vm.barurl = vm.randomStatusArray[vm.stealthStatus].description
//                vm.randomStatusArray.randomElement()!.description
                while vm.stealthStatus < vm.randomStatusArray.count - 1 {
                    vm.stealthStatus += 1
                    break
                }
                
                
                        }
        }.frame(height: 40)
        
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        StealthBarView()
    }
}



