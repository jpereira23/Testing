//
//  Warrior.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/16/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit

// Create the new class Warrior, inheriting from SKSpriteNode
// and adopting the GameSprite protocol:

class Warrior: SKSpriteNode, GameSprite {
    // We will store out size, texture atlas, and animations
    // as class wide properties.
    var initialSize: CGSize = CGSize(width: 28, height: 24)
    var textureAtlas = SKTextureAtlas(named: "Game Stuff")
    
    var flyAnimation = SKAction()
    
    
    // The init function will be called when Warrior is instantiated:
    
    init() {
        // Call the init function on the base class (SKSpriteNode)
        // We pass nil for the texture since we will animate the
        // texture ourselves.
        
        super.init(texture: nil, color: .clear, size: initialSize)
        
        // Create and run the flying animation:
        createAnimations()
        self.run(flyAnimation)
    }
    
    // Our warrior only implements on texture based animation.
    // But some classes may be more complicated,
    // So we break out the animation building into this function:
    func createAnimations(){
        let flyFrames: [SKTexture] = [textureAtlas.textureNamed("warrior")]
        
        let flyAction = SKAction.animate(with: flyFrames, timePerFrame: 0.14)
        flyAnimation = SKAction.repeatForever(flyAction)
    }
    
    // onTap is not wired up yet, but we have to implement this
    // function to conform to our GameSprite protocol.
    // We will explore touch events in the next chapter.
    
    func onTap(){}
    // Lastly, we are required to add this bit of boilerplate
    // to subclass SKSpriteNode. We will need to do this any
    // time we inherit from SKSpriteNode and use an init function
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
}
