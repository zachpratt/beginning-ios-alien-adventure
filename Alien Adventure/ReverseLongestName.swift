//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longestName = ""
        var reversedName = ""
        for item in inventory {
            if item.name.characters.count > longestName.characters.count {
                    longestName = item.name
            }
        }
        reversedName = String(longestName.characters.reverse())
        return reversedName
    }
}
