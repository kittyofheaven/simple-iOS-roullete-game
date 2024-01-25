//
//  roulleteApp.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI
import SwiftData

@main
struct roulleteApp: App {    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
