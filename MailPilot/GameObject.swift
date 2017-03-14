//
//  GameObject.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode, GameProtocol {
    // Instance Variables
    var dy:CGFloat?
    var dx:CGFloat?
    var randomSource:GKARC4RandomSource?
    var randomDist:GKRandomDistribution?
    var width:CGFloat?
    var height:CGFloat?
    var halfwidth: CGFloat?
    var halfheight: CGFloat?
    var scale:CGFloat?
    var isColliding:Bool?
    
    // Constructor
    init(imageString: String, initialScale: CGFloat) {
        // initialize the object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        self.scale = initialScale
        self.setScale(scale!)
        self.width = texture.size().width * self.scale!
        self.height = texture.size().height * self.scale!
        self.halfwidth = self.width! * 0.5;
        self.halfheight = self.height! * 0.5;
        randomSource = GKARC4RandomSource()
        self.isColliding = false
        self.name = imageString
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func Reset() {

    }
    
    public func CheckBounds() {

    }
    
    public func Start() {
        
    }
    
    public func Update() {

    }

}
