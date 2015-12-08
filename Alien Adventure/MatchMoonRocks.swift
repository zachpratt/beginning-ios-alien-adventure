//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        var MoonRocks = [UDItem]()
        for item in inventory {
            if item.name.containsString("MoonRock") {
                MoonRocks.append(item)
            }
        }
        return MoonRocks
    }
}
