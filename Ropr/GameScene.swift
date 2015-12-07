//
//  GameScene.swift
//  Ropr
//
//  Created by Brendon Ho on 12/6/15.
//  Copyright (c) 2015 Brendon Ho. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
   
        
        //Water!
        let lolTex = SKSpriteNode.init(imageNamed: "Water.png")
        lolTex.setScale(2.0)
        lolTex.position = CGPointMake(CGRectGetMidX(self.frame),140)
        self.addChild(lolTex)
        
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */

        }
    }
   
    func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }


