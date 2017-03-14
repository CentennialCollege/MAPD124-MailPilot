//
//  ScoreManager.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import SpriteKit

class ScoreManager {
    // private instance variables
    private var _score: Int?
    private var _lives: Int?
    
    // public properties
    public var Score:Int {
        get{
            return self._score!
        }
        set{
            self._score = newValue
        }
    }
    
    public var Lives:Int {
        get{
            return self._lives!
        }
        
        set {
            self._lives = newValue
        }
    }
    
    init() {
        self.Start()
    }
    
    func Start() {
        self.Lives = 5
        self.Score = 0
    }
    
    func Update(scoreLabel:SKLabelNode, livesLabel:SKLabelNode) {
        scoreLabel.text = "Score: \(self.Score)"
        livesLabel.text = "Lives: \(self.Lives)"
    }
    

}
