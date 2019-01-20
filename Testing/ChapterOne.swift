//
//  ChapterOne.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/20/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import SpriteKit


class ChapterOne: NSObject {
    
    var chapterOneBackground: SKSpriteNode!
    init(scene: SKScene){
        super.init()
        setUpBackground()
        scene.addChild(chapterOneBackground)
        
    }
    
    private func setUpBackground(){
        chapterOneBackground = SKSpriteNode(imageNamed: "short-bg")
        chapterOneBackground.position = CGPoint(x: 205, y: 450)
        chapterOneBackground.size = CGSize(width: 400, height: 750)
    }
}
