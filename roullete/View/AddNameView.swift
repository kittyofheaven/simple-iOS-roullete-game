//
//  addNameView.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import SwiftUI

struct AddNameView: View {
    @StateObject var viewModel = AddNameViewModel()
    
    var body: some View {
        HStack {
            
            TextField(text: $viewModel.name, label: {
                Text("Insert Your Name")
                    .foregroundStyle(Color("MainColor").opacity(0.3))
                    
                    
            })
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 2)
            }
    
            Button(action: {
                withAnimation{
                    viewModel.addUser()
                }
            }, label: {
                
                ZStack {
                    Rectangle()
                        .fill(Color("MainColor"))
                        .frame(width: 100, height: 60)
                        .cornerRadius(20)
                    Text("Submit")
                        .foregroundStyle(Color("SecondColor"))
                }
                
            })
            
        }
        .padding()
    }
}

#Preview {
    AddNameView()
}
