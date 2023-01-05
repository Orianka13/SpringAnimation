//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 30.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var infoLabel: SpringLabel!
    
    private var animation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation = Animation.getAnimation()
        setupInfoLabel()
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        guard let animation = animation else { return }
        
        infoLabel.animation = animation.preset
        infoLabel.curve = animation.curve
        infoLabel.force = animation.force
        infoLabel.duration = animation.duration
        infoLabel.delay = animation.delay
        infoLabel.animate()
        
        let secondAnimation = Animation.getAnimation()
        sender.setTitle("Run " + secondAnimation.preset, for: .normal)
        
        setupInfoLabel()
       
        self.animation = secondAnimation
    }
    
    private func setupInfoLabel() {
        infoLabel.text = animation.info
    }
}

