//
//  Player.swift
//  JeudeMimeApp
//
//  Created by Admin on 27/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import Foundation

class Player{
    private let name: String
    
    init(pName: String) {
        self.name = pName
    }
    
    public func toString() -> String{
        return self.name
    }
}
