//
//  GameProtocol.swift
//  MailPilot
//
//  Created by Tom Tsiliopoulos on 2017-03-14.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

protocol GameProtocol {
    func Reset()
    
    func CheckBounds()
    
    func Start()
    
    func Update()
}
