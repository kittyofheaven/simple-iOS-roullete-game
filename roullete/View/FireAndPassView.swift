//
//  FireAndPassView.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI

struct FireAndPassView: View {
    @AppStorage("name") var userName = ""
    @ObservedObject var viewModel = RoulleteViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                if viewModel.isWin == nil {
                    
                    Text("Hello \(userName)")
                        .font(.largeTitle)
                    Text("Bullet number \(String(viewModel.bulletNow))")
                    
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
                        viewModel.fpFire()
                       }) {
                           Text("Fire")
                               .frame(width: 150, height: 80)
                               .foregroundStyle(Color("SecondColor"))
                               .background(Color("MainColor"))
                               .cornerRadius(30)
                       }
                    Button(action: {
                        viewModel.fpPass()
                       }) {
                           Text("Pass (\(viewModel.maxPass))")
                               .frame(width: 150, height: 80)
                               .foregroundStyle(Color("SecondColor"))
                               .background(Color("MainColor"))
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
    FireAndPassView()
}
