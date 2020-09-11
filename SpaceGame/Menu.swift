//
//  Menu.swift
//  SpaceGame
//
//  Created by Armaana Thapar on 2019-05-28.
//  Copyright © 2019 Armaana Thapar. All rights reserved.
//

import SpriteKit

class Menu: SKScene {
    
    var starfield:SKEmitterNode!
    
    var newGameButtonNode:SKSpriteNode!
    var difficultyButtonNode:SKSpriteNode!
    var difficultyLabelNode:SKLabelNode!
    
    override func didMove(to view: SKView) {
        
        starfield = self.childNode(withName: "starfield") as! SKEmitterNode
        starfield.advanceSimulationTime(10)
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as! SKSpriteNode
        difficultyButtonNode = self.childNode(withName: "difficultyButton") as! SKSpriteNode
        
        
    }

}
