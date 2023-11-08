//
//  ViewController.swift
//  animationApp
//
//  Created by Roman on 08.11.23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springLabel: SpringLabel!
    @IBOutlet weak var springButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var counter = true
    
    @IBAction func runAnimationPressed(_ sender: SpringButton) {
        var animation = Animation.getAnimation()
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        
        if counter {
            springLabel.animation = "zoomIn"
            springLabel.animate()
            counter.toggle()
        } else {
            springLabel.animation = "zoomOut"
            springLabel.animate()
            counter.toggle()
        }
        
        springLabel.text = animation.description
        
        springButton.setTitle(animation.preset, for: .normal)
        springAnimationView.animate()
        
        
    }
    
}

