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
    
    var sum: Int = 0
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!

    
    @IBAction func addAction(sender: AnyObject) {
        if let number = numberField.text.toInt() {
            sum += number
            sumLabel.text = "\(sum)"
        }
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}


/*
var number = numberField.text
var start = 0
var sum = start + number
sumLabel.text = sum
*/

/*
@IBAction func addAction(sender: AnyObject, y: Int) {
    var x = sumLabel.text!.toInt()
    var sum = x! + y
    sumLabel.text = sum
}
*/

/*
var x = numberField.text.toInt()
var y = sumLabel.text?.toInt()
var sum = x! + y!
sumLabel.text = sum
*/