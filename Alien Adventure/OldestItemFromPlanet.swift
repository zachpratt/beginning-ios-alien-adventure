//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let planetList = itemsFromPlanet(inventory, planet: planet)
        var oldestItem: UDItem?
        var oldestAge = 0
        if planetList.count == 0 {
            return nil
        } else {
            for item in planetList {
                if let itemAge = item.historicalData["CarbonAge"] as? Int {
                    if itemAge > oldestAge {
                        oldestAge = itemAge
                        oldestItem = item
                    }
                }
            }
        }
        return oldestItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"