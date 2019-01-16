//
//  GameViewController.swift
//  Testing
//
//  Created by Jeffery Pereira on 1/16/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene"){
                // Set the scale mode fit the window:
                scene.scaleMode = .aspectFill
                
                // Size our scene to fit the view exactly:
                scene.size = view.bounds.size
                
                // Show the new scene:
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
            return .portrait
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
