//
//  Character.swift
//  RPG-OOP
//
//  Created by Thiago Costa on 2/29/16.
//  Copyright © 2016 Thiago Costa. All rights reserved.
//

import Foundation

class Character {
    
    
    private var _hp: Int = 100
    private var _attachPwr: Int = 10
    
    var attachPwr: Int {
        get {
            return _attachPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
        
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 { return false }
            else { return true}
        }
    }
    
    init(startingHp: Int, attackPwr: Int) {
        
        self._hp = startingHp
        self._attachPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
}