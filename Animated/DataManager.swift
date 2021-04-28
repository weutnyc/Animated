//
//  DataManager.swift
//  Animated
//
//  Created by Anton on 28.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets = ["slideLeft", "slideRight", "slideDown"]
    let curves = ["easeIn", "easeOut", "easeInOut", "linear"]
    let forces: [CGFloat] = [0.6, 0.8, 1]
    let duration: [CGFloat] = [0.6, 0.8, 1]
    let delay: [CGFloat] = [0.6, 0.8, 1]
    
    private init() {}
}

