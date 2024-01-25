//
//  RoulleteViewModel.swift
//  roullete
//
//  Created by Hazel Handrata on 23/01/24.
//

import Foundation
import SwiftUI

class RoulleteViewModel: ObservableObject {
    @AppStorage("name") var userName = ""
    
    @Published var isWin:Bool? = nil
    @Published var chamber:[Bool] = []
    @Published var bullet:Int = 3
    @Published var maxBullet:Int = 10
    
    // for fire and pass
    @Published var bulletNow:Int = 0
    @Published var maxPass:Int = 3
    
    init(){
        resetGame()
    }
    
    func resetGame(){
        maxPass = 3
        bulletNow = 0
        isWin = nil
        chamber = []
        loadChamber()
    }
    
    private func randomInt() -> Int {
        return Int.random(in: 1...99999)%maxBullet
    }
    
    func loadChamber(){
        for _ in 0..<maxBullet {
            chamber.append(false)
        }
        
        for _ in 0..<bullet {
            chamber[randomInt()] = true
        }
    }
    
    func fire() {
        let choosenBullet:Int = randomInt()
        if chamber[choosenBullet] {
            isWin = false // karena ada bulletnya jadi meninggal
        } else {
            isWin = true // karena tidak ada bulletnya jadi selamat
        }
    }
    
    // for fire and pass
    func fpWinCheck(){
        if bulletNow == 10 && isWin == nil {
            isWin = true
        }
    }
    
    func fpFire() {
        guard bulletNow < 10 else {
            return
        }
        
        if chamber[bulletNow] {
            isWin = false
        } else {
            bulletNow+=1
        }
        fpWinCheck()
    }
    
    func fpPass() {
        guard bulletNow < 10 else {
            return
        }
        guard maxPass > 0 else {
            return
        }
        
        maxPass-=1
        bulletNow+=1
        fpWinCheck()
    }
}
