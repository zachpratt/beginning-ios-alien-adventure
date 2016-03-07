//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(var badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        for request in requestTypes {
            if badges.isEmpty {
                return false
            } else {
                for badge in badges {
                    if badge.requestType.rawValue == request.rawValue {
                        badges.removeFirst()
                    }
                }
            }
        }
        return true
    }
}
