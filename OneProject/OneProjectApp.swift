//
//  OneProjectApp.swift
//  OneProject
//
//  Created by Frederik Hjorth on 03/04/2021.
//

import SwiftUI
import Firebase

@main
struct OneProjectApp: App {
    
    @StateObject private var session = SessionStore()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(session)
        }
    }
}
