//
//  ViewController.swift
//  Lesson12AutoLayout-IB
//
//  Created by Chase Lewis on 7/13/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let errorLabel = UILabel()
        errorLabel.setTranslatesAutoresizingMaskIntoConstraints(false) // MUST do this to tell the program that you are setting constraits
        errorLabel.text = "Sorry, we could not find your email address fnjdsfgjsdfnskjfndskf"
        errorLabel.textColor = UIColor.redColor()
        errorLabel.backgroundColor = UIColor.blackColor()
        errorLabel.numberOfLines = 0
        view.addSubview(errorLabel)
        
        let leftConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0)
        
        let topConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 10)
        
        let rightConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0)
        
    
        leftConstraint.active = true
        topConstraint.active = true
        rightConstraint.active = true
        
        // May also activate constrainst like this...
        // view.addConstraint(leftConstraint)
        // view.addConstraint(topConstraint)
        // view.addConstraints([leftConstraint], [topConstraint])
        
    }


}

