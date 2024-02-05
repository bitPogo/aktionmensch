//
//  AktionMenschDemoApp.swift
//  AktionMenschDemo
//
//  Created by Matthias Geisler on 05.02.24.
//

import SwiftUI

@main
struct AktionMenschDemoApp: App {
    private let quickActionController = QuickActionController.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(quickActionController)
        }
    }
}
