//
//  Animation.swift
//  Animated
//
//  Created by Anton on 28.04.2021.
//

import Spring

struct Animation {
    
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
}

extension Animation {
    static func getAnimations() -> [Animation] {
        
        var Animations: [Animation] = []
        
        let presets = DataManager.shared.presets.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        let forces = DataManager.shared.forces.shuffled()
        let durations = DataManager.shared.duration.shuffled()
        let delays = DataManager.shared.delay.shuffled()
        
        let iterationsCount = min(presets.count, curves.count, forces.count, durations.count, delays.count)
        
        for index in 0..<iterationsCount {
            let animation = Animation(
                preset: presets[index],
                curve: curves[index],
                force: forces[index],
                duration: durations[index],
                delay: delays[index]
            )
            Animations.append(animation)
        }
        return Animations
    }
}
