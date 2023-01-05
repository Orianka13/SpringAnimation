//
//  Animation.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 04.01.2023.
//



struct Animation {
    let preset: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    var info: String { """
                                preset: \(preset)
                                curve: \(curve)
                                force: \(force)
                                duration: \(duration)
                                delay: \(delay)
                            """
    }
}

extension Animation {
    static func getAnimation() -> Animation {
    
        return Animation(preset: DataStore.shared.presets.randomElement()?.rawValue ?? "",
                         curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
                         force: Int.random(in: DataStore.shared.force),
                         duration: Int.random(in: DataStore.shared.duration),
                         delay: Int.random(in: DataStore.shared.delay))
    }
}
