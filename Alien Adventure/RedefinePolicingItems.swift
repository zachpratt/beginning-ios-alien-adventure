//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

// MARK: - UDPolicingError

enum UDPolicingError: ErrorType {
    case NameContainsLaser
    case ItemFromCunia
    case ValueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> (UDItem throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            let lowercase = item.name.lowercaseString
            if lowercase.containsString("laser") {
                throw UDPolicingError.NameContainsLaser
            }
            if item.historicalData["PlanetOfOrigin"] as? String == "Cunia" {
                throw UDPolicingError.ItemFromCunia
            }
            if item.baseValue < 10 {
                throw UDPolicingError.ValueLessThan10
            }
        }
        
        return policingFilter        
    }    
}

