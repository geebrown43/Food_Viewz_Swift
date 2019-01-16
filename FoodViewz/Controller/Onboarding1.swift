//
//  ViewController.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/15/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class Onboarding1: UIViewController {
    @IBOutlet var backgroundImage1: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradient()
        
        //Adds swipe gesture to screen
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeMovement(sender: )))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
      
    }

    
    //Adds Gradient layer to background Image
    //Also has a CAGradient extension
    func addGradient() {
        let backgroundColor = CAGradientLayer().blackColor()
        backgroundColor.frame = backgroundImage1.bounds
        backgroundImage1.layer.insertSublayer(backgroundColor, at: 0)
       
    }
    
    @objc func swipeMovement(sender: UISwipeGestureRecognizer){

       self.performSegue(withIdentifier: "Onboarding2", sender: self)
    }

}


