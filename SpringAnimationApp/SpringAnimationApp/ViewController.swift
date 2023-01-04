//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Олеся Егорова on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        infoLabel.layer.cornerRadius = 10
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
}

