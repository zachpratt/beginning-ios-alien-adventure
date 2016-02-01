//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let planetJSON = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawPlanetJSON = NSData(contentsOfURL: planetJSON)!
        var planetDictionary: [[String:AnyObject]]!
        do {
            planetDictionary = try! NSJSONSerialization.JSONObjectWithData(rawPlanetJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        var planetWithHighestPoints = ""
        var currentHighestPoint = 0
        
        for planet in planetDictionary where planetDictionary.count > 0 {
            var totalPoints = 0
            var planetName = ""
            var commonPoints = 0
            var uncommonPoints = 0
            var rarePoints = 0
            var legendaryPoints = 0
            
            if let name = planet["Name"] as? String {
                planetName = name
            }
            
            if let commonItems = planet["CommonItemsDetected"] as? Int {
                commonPoints = commonItems
            }
            
            if let uncommonItems = planet["UncommonItemsDetected"] as? Int {
                uncommonPoints = uncommonItems * 2
            }
            
            if let rareItems = planet["RareItemsDetected"] as? Int {
                rarePoints = rareItems * 3
            }
            
            if let legendaryItems = planet["LegendaryItemsDetected"] as? Int {
                legendaryPoints = legendaryItems * 4
            }
            
            totalPoints = commonPoints + uncommonPoints + rarePoints + legendaryPoints
            
            if totalPoints > currentHighestPoint {
                currentHighestPoint = totalPoints
                planetWithHighestPoints = planetName
            }
            
            print("The planet is \(planetName), and the total points are \(totalPoints)")
        }
        
        return planetWithHighestPoints
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"