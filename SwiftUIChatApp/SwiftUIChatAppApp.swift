//
//  SwiftUIChatAppApp.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/23/24.



import SwiftUI
import Firebase

@main
struct SwiftUIChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
