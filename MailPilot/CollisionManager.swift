//
//  CollisionManager.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//
import CoreGraphics
import SpriteKit

class CollisionManager {
    
    init() {
        
        self.Start()
    }
    
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    public static func CheckCollision(object1: GameObject, object2: GameObject, scoreboard: ScoreManager) {
        if(CGPoint.Distance(P1: object1.position, P2: object2.position) <
            object1.halfheight! + object2.halfheight!) {
            
            if(!object2.isColliding!) {
                if(object2.name == "island") {
                    scoreboard.Score += 100
                }
                if (object2.name == "cloud") {
                    scoreboard.Lives -= 1
                }
                object2.isColliding = true
            }
            
        }
        else {
            object2.isColliding = false
        }
    }
    
}
