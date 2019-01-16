//
//  Onboarding3.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/15/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class Onboarding3: UIViewController {

    @IBOutlet weak var backgroundImage3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       addGradient()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeDirection(sender:)))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
    
    }
    
    func addGradient() {
        let backgroundColor = CAGradientLayer().blackColor()
        backgroundColor.frame = backgroundImage3.bounds
        backgroundImage3.layer.insertSublayer(backgroundColor, at: 0)
        
    }
    @objc func swipeDirection(sender: UISwipeGestureRecognizer){
        self.performSegue(withIdentifier: "BackFrom3", sender: self)
    }

}
