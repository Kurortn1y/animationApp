//
//  Animation.swift
//  animationApp
//
//  Created by Roman on 08.11.23.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    var description: String {"""
        preset: \(preset)
        curve:\(curve)
        force:\(String(format: "%.02f", force))
        duration:\(String(format: "%.02f", duration))
        delay:\(String(format: "%.02f", delay))
        """
    }
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            force: CGFloat.random(in: 0...1),
            duration: CGFloat.random(in: 0...1),
            delay: CGFloat.random(in: 0...1))
    }
    
}
