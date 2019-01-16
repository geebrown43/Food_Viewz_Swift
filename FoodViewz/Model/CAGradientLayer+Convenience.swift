//
//  CAGradientLayer+Convenience.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/15/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    func blackColor() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        let lightOpacityBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        gradient.colors = [lightOpacityBlack, lightOpacityBlack]
        return gradient
    }
    
    func darkBlack() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        let darkOpacityBlack = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
        gradient.colors = [darkOpacityBlack, darkOpacityBlack]
        return gradient
    }
    
    func purple() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        let darkPurple = UIColor(red: 48/255, green: 35/255, blue: 174/255, alpha: 1).cgColor
        let lightPurple = UIColor(red: 81/255, green: 95/255, blue: 236/255, alpha: 1).cgColor
        gradient.colors = [darkPurple, lightPurple]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.0)
        return gradient
    }
}
