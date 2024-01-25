//
//  addNameViewModel.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import Foundation
import SwiftUI

class AddNameViewModel: ObservableObject {
    @AppStorage("name") var userName = ""
    @Published var name:String = ""
    
    init(){}
    
    func addUser(){
        userName = name
    }
    
    
}
