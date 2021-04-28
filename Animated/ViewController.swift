//
//  ViewController.swift
//  Animated
//
//  Created by Anton on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    let animations = Animation.getAnimations()
    
    
    @IBOutlet var springAnimationView: SpringView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        
      
    }
    
    
}

