//
//  CoreGraphicsViewController.swift
//  UIViewAnimations
//
//  Created by Chase Lewis on 8/10/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class CoreGraphicsViewController: UIViewController {
    @IBOutlet weak var square: UIView!
    let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // square.clipsToBounds = true
        
        square.layer.cornerRadius = 110
        //square.layer.masksToBounds = true
        square.layer.backgroundColor = UIColor.yellowColor().CGColor
        
        let newLayer = CALayer()
        newLayer.backgroundColor = UIColor.orangeColor().CGColor
        newLayer.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        square.layer.addSublayer(newLayer)
        
        println("This view has \(view.subviews.count) subviews")
        println("This square has \(square.layer.sublayers.count) sublayers")
        
        square.layer.shadowColor = UIColor.blackColor().CGColor
        square.layer.shadowOffset = CGSizeMake(0, 2)
        square.layer.shadowRadius = 2
        square.layer.shadowOpacity = 0.3
        
        
        gradient.colors = [UIColor.yellowColor().CGColor, UIColor.blueColor().CGColor]
        gradient.frame = CGRectMake(0, 0, view.frame.width, view.frame.height)
        gradient.startPoint = CGPointMake(0.5, 0)
        gradient.endPoint = CGPointMake(0.5, 1)
        
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        square.layer.borderColor = UIColor.purpleColor().CGColor
        square.layer.borderWidth = 2
    }
}
