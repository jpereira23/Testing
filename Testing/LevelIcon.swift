//
//  LevelIcon.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/16/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit
import AVFoundation

class LevelIcon: SKSpriteNode, GameSprite {
    var initialSize: CGSize = CGSize(width: 28, height: 24)
    var textureAtlas = SKTextureAtlas(named: "Game Stuff")
    var flyAnimation = SKAction()
    var theMessage = ""
    var theLabel: SKLabelNode = SKLabelNode()
    
    init(message: String, label: SKLabelNode){
        super.init(texture: nil, color: .clear, size: initialSize)
        initializeImage()
        theLabel = label
        self.run(flyAnimation)
        theMessage = message
    }
    
    func initializeImage(){
        let flyFrames: [SKTexture] = [textureAtlas.textureNamed("warrior")]
        let flyAction = SKAction.animate(with: flyFrames, timePerFrame: 0.14)
        
        flyAnimation = SKAction.repeatForever(flyAction)
    }
    
    func onTap(){
        
        let action1 = SKAction.move(by: CGVector(dx: 0.0, dy: 20.0), duration: 1.0)
        
        let action2 = SKAction.move(by: CGVector(dx: 0.0, dy: -20.0), duration: 1.0)
        
        let actionGroup = SKAction.sequence([action1, action2, action1, action2, action1, action2])
        self.run(actionGroup)
        theLabel.text = theMessage
        print(theMessage)
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
}
