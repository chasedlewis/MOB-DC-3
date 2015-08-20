//
//  PopViewController.swift
//  UIViewAnimations
//
//  Created by Chase Lewis on 8/10/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

/*
import UIKit
#import <Pop/Pop.h>

class PopViewController: UIViewController {
    @IBOutlet weak var square: UIView!
    var counter = 0
    
    @IBAction func viewTapped(sender: UITapGestureRecognizer) {
        if counter == 0 {
            //Scale
            
            let scaleAnimation = POPSpringAnimation(propertyNamed: KPopViewScaleXY)
            scaleAnimation.toValue = NSValue(CGPoint: CGPointMake(2,2))
            scaleAnimation.springBounciness = 20
            scaleAnimation.springSpeed = 5
            square.pop_addAnimation(scaleAnimation, forKey: "squareScale")
        } else  if counter == 1 {
            let scaleAnimation = POPSpringAnimation(propertyNamed: KPopViewScaleXY)
            scaleAnimation.toValue = NSValue(CGPoint: CGPointMake(1,1))
            scaleAnimation.springBounciness = 5
            scaleAnimation.springSpeed = 15
            square.pop_addAnimation(scaleAnimation, forKey: "squareScale")
        } else if counter == 2 {
            let colorAnimation = POPBasicAnimation(propertyNamed: kPOPViewBackgroundColor)
            colorAnimation.toValue = UIColor.redColor().CGColor
            square.pop_addAnimation(scaleAnimation, forKey: "squareBGColor")
        } else if counter == 3 {
            let scaleAnimation = POPSpringAnimation(propertyNamed: KPopLayoutConstraintConstant)
            scaleAnimation.toValue = 60
            scaleAnimation.springBounciness = 20
            scaleAnimation.springSpeed = 5
            squareTopConstraint.pop_addAnimation(scaleAnimation, forKey: "squareY")
        } else if counter == 4 {
            let scaleAnimation = POPSpringAnimation(propertyNamed: KPopLayoutConstraintConstant)
            scaleAnimation.toValue = 27
            scaleAnimation.springBounciness = 20
            scaleAnimation.springSpeed = 5
            squareTopConstraint.pop_addAnimation(scaleAnimation, forKey: "squareY")
        }
    }
    
}
*/