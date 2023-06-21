//
//  ChatUpApp.swift
//  ChatUp
//
//  Created by Satyam Shivhare on 05/04/23.
//

import SwiftUI
import Firebase

@main
struct ChatUpApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
