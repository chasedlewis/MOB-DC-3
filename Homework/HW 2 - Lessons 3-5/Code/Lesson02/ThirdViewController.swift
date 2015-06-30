//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{

    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    @IBAction func calculateAction(sender: AnyObject) {
        var remainder: Int = numberField.text.toInt()! % 2
        if (remainder == 0) {
            textLabel.text = "is even!"
        } else {
            textLabel.text = "is not even."
        }
    }
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
