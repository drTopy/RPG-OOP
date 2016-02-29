//
//  Kimara.swift
//  RPG-OOP
//
//  Created by Thiago Costa on 2/29/16.
//  Copyright © 2016 Thiago Costa. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Triden"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
        
    }
    
}