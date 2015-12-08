//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var currentLowestItemValue = inventory.first?.baseValue
        var lowestValueItem: UDItem?
        if inventory.count > 0 {
            for item in inventory {
                if item.baseValue < currentLowestItemValue {
                    currentLowestItemValue = item.baseValue
                    lowestValueItem = item
                }
            }
        }
        return lowestValueItem
    }
}
