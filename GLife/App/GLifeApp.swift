//
//  GLifeApp.swift
//  GLife
//
//  Created by Berkay Sutlu on 26.04.2024.
//

import SwiftUI
import Firebase
@main
struct GLifeApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
    }
}
