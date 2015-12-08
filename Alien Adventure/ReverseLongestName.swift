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
        for item in inventory {
            if item.name.characters.count > longestName.characters.count {
                    longestName = item.name
            }
        }
        let reversedLongestName = longestName.characters.reverse()
        return String(reversedLongestName)
    }
}
