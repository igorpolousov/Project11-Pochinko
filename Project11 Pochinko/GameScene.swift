//
//  GameScene.swift
//  Project11 Pochinko
//
//  Created by Igor Polousov on 18.08.2021.
//

import SpriteKit


class GameScene: SKScene {

    override func didMove(to view: SKView) {
        
        let backGround = SKSpriteNode(imageNamed: "background")
        backGround.position = CGPoint(x: 512, y: 384)
        backGround.blendMode = .replace
        backGround.zPosition = -1
        addChild(backGround)
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: .red, size: CGSize(width: 64, height: 64))
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
        box.position = location
        addChild(box)
        
    }

}
