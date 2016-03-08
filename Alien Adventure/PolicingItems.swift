//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errorsThrown = [UDPolicingError.ItemFromCunia : 0, UDPolicingError.NameContainsLaser : 0, UDPolicingError.ValueLessThan10 : 0]
        
        var totalCuniaErrors = 0
        var totalLaserErrors = 0
        var totalValueErrors = 0
        
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.ItemFromCunia {
                totalCuniaErrors += 1
                errorsThrown.updateValue(totalCuniaErrors, forKey: UDPolicingError.ItemFromCunia)
            } catch UDPolicingError.NameContainsLaser {
                totalLaserErrors += 1
                errorsThrown.updateValue(totalLaserErrors, forKey: UDPolicingError.NameContainsLaser)
            } catch UDPolicingError.ValueLessThan10 {
                totalValueErrors += 1
                errorsThrown.updateValue(totalValueErrors, forKey: UDPolicingError.ValueLessThan10)
            } catch {
                
            }
        }
        return errorsThrown
    }    
}

