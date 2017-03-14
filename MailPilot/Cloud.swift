//
//  Cloud.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-13.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class Cloud: GameObject {

    // Constructor
    init() {
        super.init(imageString: "cloud", initialScale: 0.65)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Reset() {
        self.position.y = screenHeight! + self.height!
        let randomX:Int = (randomSource?.nextInt(upperBound: Int(screenWidth! - self.width!)))! + Int(self.halfwidth!)
        self.position.x = CGFloat(randomX)
        self.dy = CGFloat(((randomSource?.nextUniform())! * 5.0) + 5.0)
        self.dx = CGFloat(((randomSource?.nextUniform())! * -2.0) + 2.0)
    }
    
    override func CheckBounds() {
        if(self.position.y <= (0-self.height!)) {
            self.Reset()
        }
    }
    
    override func Start() {
        self.zPosition = 3
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.Reset()
        
    }
    
    override func Update() {
        self.position.y -= dy!
        self.position.x += dx!
        self.CheckBounds()
    }

}
