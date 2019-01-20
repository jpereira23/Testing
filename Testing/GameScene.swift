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
    let mainMenuBackgroundNode: SKSpriteNode = SKSpriteNode(imageNamed: "map")
    var levelOne: LevelIcon!
    var levelTwo: LevelIcon!
    var levelThree: LevelIcon!
    var levelFour: LevelIcon!
    var levelFive: LevelIcon!
    var mainMenu: MainMenu!
    // Create our warrior node as a propert of GameScene so we can
    // access it throughout the class
    // (Make sure to remove the old warrior declaration below)
    let player = Player()
    
    override func didMove(to view: SKView) {
        // Position from the lower left corner
        self.anchorPoint = .zero
        mainMenu = MainMenu(scene: self)
        //initializeMainMenu()
        
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
}

extension GameScene: LevelIconDelegate{
    func transitionGameplay(message: String) {
        self.mainMenu.prepTransitionToChapter()
        switch(message){
        case "Chapter One":
            let chapterOne = ChapterOne(scene: self)
            break
        case "Chapter Two":
            break
        case "Chapter Three":
            break
        case "Chapter Four":
            break
        case "Chapter Five":
            break
        default:
            break
        }
    }
}
