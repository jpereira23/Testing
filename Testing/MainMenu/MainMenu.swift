//
//  MainMenu.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/20/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit


class MainMenu: NSObject {
    let label = SKLabelNode(text: "Select a Chapter")
    let mainMenuBackgroundNode = SKSpriteNode(imageNamed: "map")
    var levelOne: LevelIcon!
    var levelTwo: LevelIcon!
    var levelThree: LevelIcon!
    var levelFour: LevelIcon!
    var levelFive: LevelIcon!
    
    // Initialize main menu in this function
    init(scene: SKScene){
        super.init()
        setLabelAttributes()
        setBackgroundAttributes()
        setLevelAttributes(scene: scene)
        
        scene.addChild(mainMenuBackgroundNode)
        scene.addChild(label)
        scene.addChild(levelOne)
        scene.addChild(levelTwo)
        scene.addChild(levelThree)
        scene.addChild(levelFour)
        scene.addChild(levelFive)
    }
    
    private func setLabelAttributes(){
        label.fontName = "Menlo-Bold"
        label.position = CGPoint(x: 200, y: 25)
    }
    
    private func setBackgroundAttributes(){
        mainMenuBackgroundNode.position = CGPoint(x: 205, y: 450)
        mainMenuBackgroundNode.size = CGSize(width: 400, height: 750)
    }
    
    private func setLevelAttributes(scene: SKScene){
        levelOne = LevelIcon(message: "Chapter One", label: label)
        levelOne.delegate = (scene as! LevelIconDelegate)
        levelOne.position = CGPoint(x: 100, y: 250)
        levelTwo = LevelIcon(message: "Chapter Two", label: label)
        levelTwo.delegate = (scene as! LevelIconDelegate)
        levelTwo.position = CGPoint(x: 50, y: 550)
        levelThree = LevelIcon(message: "Chapter Three", label: label)
        levelThree.delegate = (scene as! LevelIconDelegate)
        levelThree.position = CGPoint(x: 150, y: 650)
        levelFour = LevelIcon(message: "Chapter Four", label: label)
        levelFour.delegate = (scene as! LevelIconDelegate)
        levelFour.position = CGPoint(x: 200, y: 550)
        levelFive = LevelIcon(message: "Chapter Five", label: label)
        levelFive.delegate = (scene as! LevelIconDelegate)
        levelFive.position = CGPoint(x: 300, y: 500)
    }
    
    public func prepTransitionToChapter(){
        label.removeFromParent()
        mainMenuBackgroundNode.removeFromParent()
        levelOne.removeFromParent()
        levelTwo.removeFromParent()
        levelThree.removeFromParent()
        levelFour.removeFromParent()
        levelFive.removeFromParent()
    }
}
