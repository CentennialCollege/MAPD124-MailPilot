//
//  Island.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-13.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class Island: GameObject {
    
    // constructor
    init() {
        // initialize the object with an image
        super.init(imageString: "island", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {
        self.position.y = screenHeight! + self.height!
        let randomX:Int = (randomSource?.nextInt(upperBound: Int(screenWidth! - self.width!)))! + Int(self.halfwidth!)
        self.position.x = CGFloat(randomX)
    }
    
    override func CheckBounds() {
        if(self.position.y <= (0-self.height!)) {
            self.Reset()
        }
    }
    
    override func Start() {
        self.zPosition = 1
        self.dy = 5.0
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.Reset()
        
    }
    
    override func Update() {
        self.position.y -= self.dy!
        self.CheckBounds()
    }

}
