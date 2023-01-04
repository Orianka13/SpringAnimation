//
//  DataStore.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 04.01.2023.
//

import UIKit
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animation = AnimationPreset.allCases.randomElement()
    let curve = AnimationCurve.allCases.randomElement()
    let force = CGFloat(Int.random(in: 0...10))
    let duration = CGFloat(Int.random(in: 0...10))
    let delay = CGFloat(Int.random(in: 0...10))
    
    private init() {}
}
