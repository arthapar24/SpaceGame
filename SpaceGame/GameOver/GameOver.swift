//
//  GameOver.swift
//  SpaceGame
//
//  Created by Armaana Thapar on 2019-05-29.
//  Copyright © 2019 Armaana Thapar. All rights reserved.
//

import SpriteKit
import UIKit
import FirebaseDatabase

class GameOver: SKScene {
    
    
    
    var score:Int = 0
    var textField: UITextField?
    var na:String = " "
    
    var scoreLabel:SKLabelNode!
    var newGameButtonNode:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        scoreLabel = self.childNode(withName: "ScoreLabel") as! SKLabelNode
        scoreLabel.text = "\(score)"
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as! SKSpriteNode
        ViewController().alerting()
                
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self) {
            let node = self.nodes(at: location)
            
            if node[0].name == "newGameButton" {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view!.presentScene(gameScene, transition: transition)
            }
        }
    }
    

}
