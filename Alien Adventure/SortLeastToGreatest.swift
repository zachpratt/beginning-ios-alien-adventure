//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        return inventory.sort { $0 < $1 }
    }    
}


// I didn't remember that we had already overloaded the comparator function way back in Part 2 .. The below code worked just fine, but obviously reusing the previously written code makes more sense. Thanks forum!
//return inventory.sort { $0.rarity.rawValue < $1.rarity.rawValue || ($0.rarity.rawValue == $1.rarity.rawValue && $0.baseValue < $1.baseValue) }