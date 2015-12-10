//
//  GameScene.swift
//  Ropr
//
//  Created by Brendon Ho on 12/6/15.
//  Copyright (c) 2015 Brendon Ho. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var man = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        //Physics, I suck At It
        self.physicsWorld.gravity = CGVectorMake(0.0,-5.0)
        
        //Water!
        let lolTex = SKTexture(imageNamed: "Waterbetter.png")
        let lolTexSprite = SKSpriteNode(texture: lolTex)
        lolTexSprite.setScale(2.0)
        lolTexSprite.position = CGPointMake(self.size.width/2, 140)
        
        let water = SKNode()
        water.position = CGPointMake(0,lolTex.size().height)
        water.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, lolTex.size().height * 2.0))
        water.physicsBody?.dynamic = false
        self.addChild(water)
        //Character!
        let manTex = SKTexture(imageNamed: "Char.png")
        
        man = SKSpriteNode(texture: manTex)
        man.setScale(0.5)
        man.position = CGPoint(x: self.frame.size.width * 0.35, y: self.frame.size.height * 0.6)
        man.physicsBody = SKPhysicsBody(circleOfRadius: man.size.height/2.0)
        man.physicsBody!.dynamic = true
        man.physicsBody?.allowsRotation = false
        self.addChild(man)
        
        //Ropes!
        let ropeTex = SKSpriteNode.init(imageNamed: "")
        ropeTex.setScale(2.0)
        
        
       
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        for touch: AnyObject in touches {
        }

        }
    }
   
    func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }


