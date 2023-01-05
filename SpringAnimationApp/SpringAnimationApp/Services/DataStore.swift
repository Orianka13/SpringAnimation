//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Олеся Егорова on 05.01.2023.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    let force = (1...5)
    let duration = (1...3)
    let delay = (0...1)
    
    private init() {}
}
