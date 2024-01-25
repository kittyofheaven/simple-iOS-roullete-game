//
//  UserModel.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import Foundation
import SwiftData

@Model
class User: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String){
        self.id = UUID().uuidString
        self.name = name
    }
    
}
