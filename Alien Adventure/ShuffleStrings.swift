//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var firstStringIndex = 0
        var secondStringIndex = 0
        if shuffle.characters.count == s1.characters.count + s2.characters.count {
            for character in shuffle.characters {
                if firstStringIndex < s1.characters.count && character == s1[s1.characters.startIndex.advancedBy(firstStringIndex)] {
                    ++firstStringIndex
                } else if secondStringIndex < s2.characters.count && character == s2[s2.characters.startIndex.advancedBy(secondStringIndex)] {
                        ++secondStringIndex
                } else {
                    return false
                }
            }
        } else {
            return false
        }
        return true
    }
}