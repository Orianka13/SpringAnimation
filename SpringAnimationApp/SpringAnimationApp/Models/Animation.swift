//
//  Animation.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 04.01.2023.
//



struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var info: String { """
                                preset: \(preset)
                                curve: \(curve)
                                force: \(String(format: "%.02f", force))
                                duration: \(String(format: "%.02f", duration))
                                delay: \(String(format: "%.02f", delay))
                            """
    }
}

extension Animation {
    static func getAnimation() -> Animation {
    
        return Animation(preset: DataStore.shared.presets.randomElement()?.rawValue ?? "slideLeft",
                         curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
                         force: Double.random(in: 1...1.5),
                         duration: Double.random(in: 0.8...1.6),
                         delay: Double.random(in: 0...1))
    }
}
