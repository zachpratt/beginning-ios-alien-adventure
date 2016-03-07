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
                    let badgeIndex = badges.indexOf(badge)
                    if badge.requestType.rawValue == request.rawValue {
                        badges.removeAtIndex(badgeIndex!)
                    }
                }
            }
        }
        return true
    }
    
}




//[Alien_Adventure.UDRequestType.BasicCheck, Alien_Adventure.UDRequestType.BasicCheck, Alien_Adventure.UDRequestType.AdvancedCheck, Alien_Adventure.UDRequestType.ExpertCheck]


//[<SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeTeal' (275 x 275)] position:{-440, 0} scale:{1.00, 1.00} size:{48, 48} anchor:{0.5, 0.5} rotation:-10.97]




//
//[<SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeMagenta' (275 x 275)] position:{-370, 0} scale:{1.00, 1.00} size:{48, 48} anchor:{0.5, 0.5} rotation:0.00, <SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeMagenta' (275 x 275)] position:{-300, 0} scale:{1.00, 1.00} size:{48, 48} anchor:{0.5, 0.5} rotation:0.00, <SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeTeal' (275 x 275)] position:{-230, 0} scale:{0.83, 0.83} size:{39.876754760742188, 39.876754760742188} anchor:{0.5, 0.5} rotation:0.00]
//[<SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeMagenta' (275 x 275)] position:{-300, 0} scale:{1.00, 1.00} size:{48, 48} anchor:{0.5, 0.5} rotation:0.00, <SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeTeal' (275 x 275)] position:{-230, 0} scale:{0.83, 0.83} size:{39.876754760742188, 39.876754760742188} anchor:{0.5, 0.5} rotation:0.00]
//[<SKSpriteNode> name:'(null)' texture:[<SKTexture> 'BadgeTeal' (275 x 275)] position:{-230, 0} scale:{0.83, 0.83} size:{39.876754760742188, 39.876754760742188} anchor:{0.5, 0.5} rotation:0.00]
//[]