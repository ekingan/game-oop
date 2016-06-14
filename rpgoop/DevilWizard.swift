//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Math LLC on 6/14/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Pheasant Pelt"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}