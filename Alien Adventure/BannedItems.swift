//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedItems = [Int]()
        let itemPlist = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: itemPlist) as! [[String:AnyObject]]
        for item in itemArray {
            var name = ""
            var age = 0
            var id = 0
            if let itemName = item["Name"] as? String {
                name = itemName
            }
            if let historicalData = item["HistoricalData"] as? [String:AnyObject] {
                if let itemAge = historicalData["CarbonAge"] as! Int! {
                    age = itemAge
                }
            }
            if let itemID = item["ItemID"] as? Int {
                id = itemID
            }
            if name.containsString("Laser") && age < 30 {
                bannedItems.append(id)
            }
        }
        return bannedItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"