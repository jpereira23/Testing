//
//  GameScene.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/16/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    // Create a constant cam as a SKCameraNode:
    let cam = SKCameraNode()
    let label = SKLabelNode(text: "Select A Chapter")
    let backgroundNode: SKSpriteNode = SKSpriteNode(imageNamed: "map")
    // Create our warrior node as a propert of GameScene so we can
    // access it throughout the class
    // (Make sure to remove the old warrior declaration below)
    let player = Player()
    
    override func didMove(to view: SKView) {
        // Position from the lower left corner
        self.anchorPoint = .zero
        
        
        createBackground()
        label.fontName = "Menlo-Bold"
        label.position = CGPoint(x: 200, y: 25)
        self.addChild(label)
        
        addLevelOne()
        addLevelTwo()
        addLevelThree()
        addLevelFour()
        addLevelFive()
        
        
        
    }
    
    func createBackground(){
        backgroundNode.position = CGPoint(x: 205, y: 450)
        backgroundNode.size = CGSize(width: 400, height: 750)
        self.addChild(backgroundNode)
    }
    
    func addLevelOne(){
        let levelOne = LevelIcon(message: "Chapter One", label: label)
        levelOne.position = CGPoint(x: 100, y: 250)
        
        self.addChild(levelOne)
    }
    
    
    func addLevelTwo(){
        let levelTwo = LevelIcon(message: "Chapter Two", label: label)
        levelTwo.position = CGPoint(x: 50, y: 550)
        
        self.addChild(levelTwo)
    }
    
    func addLevelThree(){
        let levelThree = LevelIcon(message: "Chapter Three", label: label)
        levelThree.position = CGPoint(x: 150, y: 650)
        
        self.addChild(levelThree)
    }
    
    func addLevelFour(){
        let levelFour = LevelIcon(message: "Chapter Four", label: label)
        levelFour.position = CGPoint(x: 200, y: 550)
        
        self.addChild(levelFour)
    }
    
    func addLevelFive(){
        let levelFive = LevelIcon(message: "Chapter Five", label: label)
        levelFive.position = CGPoint(x: 300, y: 500)
        
        self.addChild(levelFive)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        for touch in (touches){
            // Find the location of the touch:
            let location = touch.location(in: self)
            
            // Locate the node at this location:
            let nodeTouched = atPoint(location)
            
            // Attempt to downcast the node to the GameSprite protocol
            
            if let gameSprite = nodeTouched as? GameSprite {
                gameSprite.onTap()
            }
        }
    }
    
    // new function to add background
}
