//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var letters = [Character:Int]()
        
        if inventory.count > 0 {
            
            for item in inventory {
                let name = item.name.lowercaseString
                for i in name.characters {
                    if let value = letters[i] {
                        let newCount = value + 1
                        letters[i] = newCount
                    } else {
                        letters[i] = 1
                    }
                }
            }
            
        } else {
            return nil
        }
        
        var maxValue: Int = 0
        var maxCharacter: Character = "a"
        
        for (letter, number) in letters {
            if number > maxValue {
                maxValue = number
                maxCharacter = letter
            }
        }
        
        return maxCharacter
    }
}
