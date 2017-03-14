//
//  Plane.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-13.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit

class Plane: GameObject {
    
    init() {
        // initialize the object with an image
        super.init(imageString: "plane", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        
    }
    
    override func Start() {
        self.position.x = screenWidth! * 0.5
        self.position.y = 50
        self.zPosition = 2
    }
    
    override func Update() {
        self.CheckBounds()
    }
    
    
    func TouchMove(newPos: CGPoint) {
        self.position = newPos
    }
}
