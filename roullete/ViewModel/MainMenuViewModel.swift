//
//  MainMenuViewModel.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import Foundation
import SwiftUI

class MainMenuViewModel:ObservableObject {
    @AppStorage("name") var userName = ""
    
    init(){}
    
    func changeName() {
        userName = ""
    }
}
