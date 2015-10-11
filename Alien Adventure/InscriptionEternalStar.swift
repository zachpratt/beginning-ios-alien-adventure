//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        var enternalStarItem: UDItem? = nil
        
        if inventory.count > 0 {            
            for item in inventory {
                if let inscription = item.inscription where inscription.uppercaseString.containsString("THE ETERNAL STAR") {
                    enternalStarItem = item
                }
            }
        }
        
        return enternalStarItem
    }
}
