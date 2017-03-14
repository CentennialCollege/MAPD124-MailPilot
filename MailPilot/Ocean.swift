//
//  Ocean.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-13.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit

class Ocean: SKSpriteNode {

    var dy:CGFloat = 5.0
    
    init() {
        // initialize the object with an image
        let texture = SKTexture(imageNamed: "ocean")
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func _reset() {
        self.position.y = 0
    }
    
    private func _checkBounds() {
        if(self.position.y <= -960) {
            self._reset()
        }
    }
    
    func Start() {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self._reset()
    }
    
    func Update() {
        self.position.y -= dy
        self._checkBounds()
    }
}
