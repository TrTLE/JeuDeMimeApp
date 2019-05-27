//
//  CoreJeuDeMime.swift
//  JeudeMimeApp
//
//  Created by Admin on 27/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import Foundation

class CoreJeuDeMime{
    private var nbMatches:Int = 20
    //True : Player1     False : Player2
    private var playerToPlay:Bool = true
    private var playerSetelted:Int = 0
    private let minMatches: Int = 1
    private let maxMatches: Int = 3
    private let matchesLeftToWin: Int = 1
    
    private let player1: Player = Player(pName: UserDefaults.standard.string(forKey: "PLAYER1")!)
    private let player2: Player = Player(pName: UserDefaults.standard.string(forKey: "PLAYER2")!)
    
    func canPlay(pNb: Int) -> Bool{
        if ((nbMatches - pNb) >= matchesLeftToWin) && ( (pNb <= maxMatches) && (pNb >= minMatches) ) {
            return true
        }else{
            return false
        }
    }
    
    func getNbMatchesleft() -> Int{
        return self.nbMatches
    }

    
    func takeMatches(pNb: Int){
        if ((nbMatches - pNb) >= matchesLeftToWin) && ( (pNb <= maxMatches) && (pNb >= minMatches) ) {
            nbMatches -= pNb
            
            playerToPlay = !playerToPlay
        }
    }
    
    func getPlayerToPlay() -> Player{
        if playerToPlay{
            return player1
        }else{
            return player2
        }
    }
    
    //True if game is over else false if game is on
    func gameEnd() -> Bool {
        if nbMatches > matchesLeftToWin {
            return false
        }
        
        return true
    }
    
    func winner() -> Player{
        if nbMatches == matchesLeftToWin {
            if playerToPlay{
                return player2
            }else{
                return player1
            }
        }
        return Player(pName:"NO WINNER || ERROR")
    }
}
