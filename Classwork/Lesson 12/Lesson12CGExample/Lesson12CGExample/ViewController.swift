//
//  ViewController.swift
//  Lesson12CGExample
//
//  Created by Chase Lewis on 7/13/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let squareA = UIView(frame: CGRectMake(20, 20, 80, 80)) // Creates a new square view
        squareA.backgroundColor = UIColor.blackColor()
        view.addSubview(squareA) // Adds a subview to the overall view
        
        // How to make a new view based on a previous one
        let squareBRect = CGRectMake(
            squareA.frame.origin.x + 100,
            squareA.frame.origin.y + 150,
            squareA.frame.size.width,
            squareA.frame.size.height)
        
        let squareB = UIView(frame: squareBRect)
        squareB.backgroundColor = UIColor.redColor()
        view.addSubview(squareB)
        
        
        // How to make a view inside of a view
        let squareC = UIView(frame: CGRectMake(
            squareB.bounds.origin.x,
            squareB.bounds.origin.y,
            squareB.bounds.size.width/2.0,
            squareB.bounds.size.height/2.0))
        
        squareC.backgroundColor = UIColor.blackColor()
        squareB.addSubview(squareC)
        
    }

}

