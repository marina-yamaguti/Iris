//
//  SplashScreen.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI
import SpriteKit

class SplashScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.mainPink
        let textures = [
            SKTexture(imageNamed: "splash-1"),
            SKTexture(imageNamed: "splash-2"),
            SKTexture(imageNamed: "splash-3"),
            SKTexture(imageNamed: "splash-4"),
            SKTexture(imageNamed: "splash-3"),
            SKTexture(imageNamed: "splash-2"),

        ]
        let animation = SKAction.animate(with: textures, timePerFrame: 0.35)
        let repeatAnimation = SKAction.repeatForever(animation)
        let sprite = SKSpriteNode(texture: textures.first)
        sprite.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(sprite)
        sprite.run(repeatAnimation)
    }
}

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color.mainPink
                .ignoresSafeArea()
            SpriteView(scene: SplashScene(size: CGSize(width: 650, height: 650)))
                .frame(width: 600, height: 600)
        }
       
    }
}

#Preview {
    SplashScreen()
}

extension UIColor {
    static let mainPink = UIColor(red: 0.97, green: 0.70, blue: 0.80, alpha: 1.00)
}

