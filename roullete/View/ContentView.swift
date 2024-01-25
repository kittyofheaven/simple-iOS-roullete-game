//
//  ContentView.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @AppStorage("name") var userName = ""
    
    var body: some View {
        if userName == "" {
            AddNameView()
        } else {
            MainMenuView()
        }
    }
}

#Preview {
    ContentView()
}
