//
//  DevilWizard.swift
//  RPG-OOP
//
//  Created by Thiago Costa on 2/29/16.
//  Copyright © 2016 Thiago Costa. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    
    override var loot: [String] {
        
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
    
    
    
}