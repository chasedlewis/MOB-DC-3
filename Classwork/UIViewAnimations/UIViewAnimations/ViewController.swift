//
//  ViewController.swift
//  UIViewAnimations
//
//  Created by Chase Lewis on 8/10/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var square: UIView!
    @IBOutlet weak var squareCenterYConstraint: NSLayoutConstraint!

    
    @IBAction func animate(sender: UIBarButtonItem) {
        if sender.title! == "Fade Out" {
            UIView.animateWithDuration(
                0.5,
                    animations: { () -> Void in
                self.square.alpha = 0
            })
        } else if sender.title == "Fade In" {
            UIView.animateWithDuration(
                0.5,
                delay: 1.0,
                options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                self.square.alpha = 1
                self.square.backgroundColor = .yellowColor()
            }, completion: nil)
        } else if sender.title == "Scale Down" {
            UIView.animateWithDuration(
                0.3,
                    animations: { () -> Void in
                self.square.transform = CGAffineTransformMakeScale(CGFloat(0.5), CGFloat(0.5))
            })
        } else if sender.title == "Scale Up" {
            UIView.animateWithDuration(
                0.7,
                delay: 0,
                usingSpringWithDamping: 0.5,
                initialSpringVelocity: 20.0,
                options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
//                self.square.transform = CGAffineTransformMakeScale(CGFloat(1.0), CGFloat(1.0))
                    self.square.transform = CGAffineTransformMakeRotation(CGFloat(M_PI * (90) / 180.0))
            }, completion: nil)
        } else if sender.title == "Move" {
            squareCenterYConstraint.constant = 200
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.view.layoutIfNeeded()
            })
        }
    }

}

