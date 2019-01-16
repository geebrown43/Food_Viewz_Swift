//
//  Onboarding2.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/15/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class Onboarding2: UIViewController {
    @IBOutlet weak var backgroundImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addGradient()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeDirection(sender:)))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeDirection(sender:)))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
    }
    
    func addGradient() {
        let backgroundColor = CAGradientLayer().blackColor()
        backgroundColor.frame = backgroundImage2.bounds
        backgroundImage2.layer.insertSublayer(backgroundColor, at: 0)
        
    }

    @objc func swipeDirection(sender:UISwipeGestureRecognizer){
        switch sender.direction {
        case .left:
            self.performSegue(withIdentifier: "Onboarding3", sender: self)
        case .right:
            self.performSegue(withIdentifier: "Onboarding1", sender: self)
        default:
            print("Nothings gonna happen")
        }
    }

}
