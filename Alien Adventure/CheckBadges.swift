//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(var badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var totalRequests = requestTypes.count
        for badge in badges {
            if requestTypes.contains(badge.requestType) {
                badges.removeAtIndex(badges.indexOf(badge)!)
                totalRequests--
            }
            if totalRequests == 0 {
                return true
            }
        }
        return false
    }
}
