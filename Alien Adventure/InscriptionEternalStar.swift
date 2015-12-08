//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {

    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var itemWithInscription: UDItem? //varaiable to return item from function
        for item in inventory { // loop through inventory array
            if let itemInscription = item.inscription { //unwrap isncription which is type "optional string"
                if itemInscription.containsString("THE ETERNAL STAR") {
                    itemWithInscription = item // if a string exists and contains "THE ETERNAL STAR" set variable 
                }
            }
        }
        return itemWithInscription // Returns the UDITEM or nil
    }
}
