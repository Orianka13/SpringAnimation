//
//  Animation.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 04.01.2023.
//

import UIKit
import SpringAnimation

struct Animation {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimation() -> Animation? {
    
        guard let preset = AnimationPreset.allCases.randomElement() else { return nil }
        guard let curve = AnimationCurve.allCases.randomElement() else { return nil }
        let force = CGFloat(Int.random(in: 0...10))
        let duration = CGFloat(Int.random(in: 0...10))
        let delay = CGFloat(Int.random(in: 0...10))
        
        let animation = Animation(preset: preset, curve: curve, force: force, duration: duration, delay: delay)
        
        return animation
    }
}
