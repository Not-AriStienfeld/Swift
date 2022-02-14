//
//  SlowmoGrahamApp.swift
//  SlowmoGraham
//
//  Created by Ari Steinfeld (student LM) on 11/3/21.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions:
                        [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        FirebaseApp.configure()
        return true
    }
}

@main
struct SlowmoGrahamApp: App {
    
    @StateObject var userInfo = User()
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userInfo)
        }
    }
}
