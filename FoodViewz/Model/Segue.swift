//
//  SegueFromLeft.swift
//  FoodViewz
//
//  Created by Gavin Brown on 1/15/19.
//  Copyright © 2019 DevelopIT. All rights reserved.
//

import UIKit

class SegueFromRight: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        let direction: CGFloat = src.view.frame.size.width
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: direction, y: 0) //a difference in source from -src.view.frame.size.width decides of screen goes from left to right
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}

// FIXME
class SegueFromLeft : UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        let direction: CGFloat = -src.view.frame.size.width
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: direction, y: 0) //a difference in source from -src.view.frame.size.width decides of screen goes from left to right
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}
