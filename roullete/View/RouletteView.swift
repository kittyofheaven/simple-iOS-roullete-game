//
//  RouletteView.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI

struct RouletteView: View {
    
    @AppStorage("name") var userName = ""
    @StateObject var viewModel = RoulleteViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                if viewModel.isWin == nil {
                    
                    Text("Hello \(userName)")
                        .font(.largeTitle)
                    
                } else {
                    if viewModel.isWin! {
                        Text("You Win")
                            .font(.largeTitle)
                            .foregroundStyle(.green)
                    } else {
                        Text("You Lose")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                        
                    }
                }
                
                HStack (spacing: 10){
                    Button(action: {
                        viewModel.fire()
                       }) {
                           Text("Fire")
                               .frame(width: 150, height: 80)
                               .foregroundColor(Color.white)
                               .background(Color.black)
                               .cornerRadius(30)
                       }
                }
            }
            .onAppear{
                viewModel.resetGame()
            }
        }
    }
}

#Preview {
    RouletteView()
}
