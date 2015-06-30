//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController
{
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var fibLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    class FibonacciAdder {
        
        var indexOfFibonacciNumber: Int = numberField.text.toInt()
        
        func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) -> Int {
            if (indexOfFibonacciNumber == 1) {
                return 0
            } else if (indexOfFibonacciNumber == 2) {
                return 1
            } else {
                return fibonacciNumberAtIndex(indexOfFibonacciNumber - 1) + fibonacciNumberAtIndex(indexOfFibonacciNumber - 2)
            }
        }
    }
    
    @IBAction func calculateAction(sender: AnyObject) {
        let newNumber = FibonacciAdder(indexOfFibonacciNumber: <#Int#>)
        newNumber.fibonacciNumberAtIndex()
        
    }
    
/*
    BONUS TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
}