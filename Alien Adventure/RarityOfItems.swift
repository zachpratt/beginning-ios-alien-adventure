//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var common = 0, uncommon = 0, rare = 0, legendary = 0
        var rarityInventory = [UDItemRarity:Int]()
        for item in inventory {
            switch item.rarity {
            case .Common:
                ++common
            case.Uncommon:
                ++uncommon
            case .Rare:
                ++rare
            case .Legendary:
                ++legendary
            }
        }
        rarityInventory = [.Common: common, .Uncommon: uncommon, .Rare: rare, .Legendary: legendary]
        return rarityInventory
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"