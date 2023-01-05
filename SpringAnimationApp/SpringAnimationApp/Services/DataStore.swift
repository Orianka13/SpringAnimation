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
    
    private init() {}
}
