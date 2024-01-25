//
//  MainMenuView.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI

struct MainMenuView: View {
    @AppStorage("name") var userName = ""
    @StateObject var viewModel:MainMenuViewModel = MainMenuViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: RouletteView()) {
                    Text("Classic Roulette")
                        .frame(width: 300, height: 60)
                        .foregroundStyle(Color("MainColor"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("MainColor"), lineWidth: 2)
                        )
                }
                
                NavigationLink(destination: FireAndPassView()) {
                    Text("Fire and Pass Roulette")
                        .frame(width: 300, height: 60)
                        .foregroundStyle(Color("MainColor"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("MainColor"), lineWidth: 2)
                        )
                }
                
                Button(action: {
                    viewModel.changeName()
                }, label: {
                    Text("Change Name")
                        .frame(width: 300, height: 60)
                        .foregroundStyle(Color("MainColor"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("MainColor"), lineWidth: 2)
                        )
                })
            }
            .navigationTitle("Main Menu")
        }
    }
}

#Preview {
    MainMenuView()
}
