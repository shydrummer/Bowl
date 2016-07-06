//
//  GameScene.swift
//  Bowl
//
//  Created by Erika Staud on 7/5/16.
//  Copyright (c) 2016 Erika Staud. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var playerNode: SKSpriteNode!
    var pinNode: SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        playerNode = childNodeWithName("//playerNode") as! SKSpriteNode
        pinNode = childNodeWithName("//pinNode") as! SKSpriteNode
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        
    }
   
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
          
            playerNode.position = location
        }
    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
