//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!

    
    @IBAction func addAction(sender: AnyObject) {
        var startNumber = 
        sumLabel.text += numberField.text
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}


/*
var number = numberField.text
var start = 0
var sum = start + number
sumLabel.text = sum
*/