//
//  LoginScreen.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/16/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
    @IBOutlet weak var loginBackground: UIImageView!
    @IBOutlet weak var signupButton: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
       
    }
    
    
    func addGradient(){
        let gradient = CAGradientLayer().darkBlack()
        let buttonGradient = CAGradientLayer().purple()
        buttonGradient.frame = signupButton.bounds
        gradient.frame = loginBackground.bounds
        loginBackground.layer.insertSublayer(gradient, at: 0)
        signupButton.layer.insertSublayer(buttonGradient, at: 0)
        signupButton.layer.cornerRadius = 4
        signupButton.clipsToBounds = true // forces cornerRadius to change with gradient layer
        
    }
    
    

  
}
