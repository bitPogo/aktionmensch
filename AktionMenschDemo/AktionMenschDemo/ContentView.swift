//
//  ContentView.swift
//  AktionMenschDemo
//
//  Created by Matthias Geisler on 05.02.24.
//

import SwiftUI

struct ContentView: View {
    @State var screen: Int8 = 0
    @EnvironmentObject var quickActionController: QuickActionController
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        VStack {
            switch self.screen {
                case 1:
                    Text("Lose")
                    Image(.cat1).imageScale(.medium)
                case 2:
                    Text("Gewinn prüfen")
                    Image(.cat2).imageScale(.medium)
                case 3:
                    Text("Gewinnzahlen")
                    Image(.cat3).imageScale(.medium)
                case 4:
                    Text("Menschen")
                    Image(.cat4).imageScale(.medium)
                default:
                    Text("Start")
                    Image(.catStart).imageScale(.medium)
            }
        }
        .onChange(of: scenePhase) { newVal in
            switch newVal {
            case .active:
                performAction()
            default:
                break
            }
        }
        .padding()
    }
    
    func performAction() {
        guard let action = quickActionController.action else { return }
        
        switch action {
            case .lots:
                self.screen = 1
            case .gamblingWin:
                self.screen = 2
            case .winNumbers:
                self.screen = 3
            case .humans:
                self.screen = 4

        }
    }
}

#Preview {
    ContentView()
}
