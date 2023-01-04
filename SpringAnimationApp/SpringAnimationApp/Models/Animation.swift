//
//  Animation.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 04.01.2023.
//


import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
}

extension Animation {
    static func getAnimation() -> Animation {
    
        let preset = AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        let curve = AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        let force = Int.random(in: 0...5)
        let duration = Int.random(in: 0...3)
        let delay = Int.random(in: 0...1)
        
        return Animation(preset: preset, curve: curve, force: force, duration: duration, delay: delay)
    }
}
