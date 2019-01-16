//
//  Player.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/16/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode, GameSprite {
    var initialSize = CGSize(width: 64, height: 64)
    var textureAtlas: SKTextureAtlas = SKTextureAtlas(named: "Game Stuff")
    
    // Ghost has multiple animations. Right now, we will
    // create on animation for flying up,
    // add one for going down:
    
    var flyAnimation = SKAction()
    var soarAnimation = SKAction()
    
    init(){
        // Call the init function on the
        // base class (SKSpriteNode)
        super.init(texture: nil, color: .clear, size: initialSize)
        
        createAnimations()
        // If we run an action with a key, "flapping Animation",
        // we can later reference that
        // key to remove the action.
        
        self.run(flyAnimation, withKey: "flapAnimation")
    }
    
    func createAnimations() {
        let rotateUpAction = SKAction.rotate(toAngle: 0, duration: 0.475)
        
        rotateUpAction.timingMode = .easeOut
        let rotateDownAction = SKAction.rotate(toAngle: -1, duration: 0.8)
        rotateDownAction.timingMode = .easeIn
        
        // Create the flying animation:
        let flyFrames: [SKTexture] = [textureAtlas.textureNamed("ghost")]
        
        let flyAction = SKAction.animate(with: flyFrames, timePerFrame: 0.03)
        
        // Group together the flying animation with rotation:
        flyAnimation = SKAction.group([SKAction.repeatForever(flyAction), rotateUpAction])
        
        // Create the soaring animation
        // just one frame for now:
    }
    
    func onTap(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
