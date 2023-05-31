//
//  BancoAlimentareApp.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 30/05/23.
//

import SwiftUI
//import Firebase

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}

@main
struct BancoAlimentareApp: App {
    var body: some Scene {
        WindowGroup {
           // ContentView()
            InputForm()
        }
    }
}
