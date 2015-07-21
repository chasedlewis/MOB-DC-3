//
//  ViewController.swift
//  GAMidtermCalculator
//
//  Created by Chase Lewis on 7/15/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var storedValue1:Double = 0
    var storedValue2:Double = 0
    var finalValue: Double = 0
    var whichFunction: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func allClearAction(sender: AnyObject) {
        storedValue1 = 0
        storedValue2 = 0
        label.text = "0"
    }

    @IBAction func negativeAction(sender: AnyObject) {
        let currentValue = label.text! as NSString
        var number = currentValue.doubleValue
        number = -1 * number
        if number % 1 == 0 {
            let newNumber = Int(number)
            label.text = String(newNumber)
        } else {
            label.text = "\(number)"
        }
    }
    
    @IBAction func percentageAction(sender: AnyObject) {
        var currentValue = label.text! as NSString
        var number = currentValue.doubleValue
        number = number / 100
        if number % 1 == 0 {
            let newNumber = Int(number)
            label.text = String(newNumber)
        } else {
            label.text = "\(number)"
        }

    }
    
    @IBAction func zeroAction(sender: AnyObject) {
        if label.text == "0" {
            // Do nothing
        } else {
            label.text! += "0"
        }
    }
    
    @IBAction func oneAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "1"
        } else {
            label.text! += "1"
        }
    }
   
    @IBAction func twoAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "2"
        } else {
            label.text! += "2"
        }
    }
    
    @IBAction func threeAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "3"
        } else {
            label.text! += "3"
        }
    }
    
    @IBAction func fourAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "4"
        } else {
            label.text! += "4"
        }
    }
    
    @IBAction func fiveAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "5"
        } else {
            label.text! += "5"
        }
    }
    
    @IBAction func sixAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "6"
        } else {
            label.text! += "6"
        }
    }
    
    @IBAction func sevenAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "7"
        } else {
            label.text! += "7"
        }
    }
    
    @IBAction func eightAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "8"
        } else {
            label.text! += "8"
        }
    }
    
    @IBAction func nineAction(sender: AnyObject) {
        if label.text == "0" {
            label.text = "9"
        } else {
            label.text! += "9"
        }
    }
    
    @IBAction func decimalAction(sender: AnyObject) {
        if label.text?.rangeOfString(".") != nil {
            //Do nothing
        } else {
            label.text! += "."
            
        }
    }
    
    @IBAction func additionAction(sender: AnyObject) {
        whichFunction = "addition"
        let newString = label.text! as NSString
        storedValue1 = newString.doubleValue
        label.text = ""
    }
    
    @IBAction func subtractionAction(sender: AnyObject) {
        whichFunction = "subtraction"
        let newString = label.text! as NSString
        storedValue1 = newString.doubleValue
        label.text = ""
    }
    
    @IBAction func multiplicationAction(sender: AnyObject) {
        whichFunction = "multiplication"
        let newString = label.text! as NSString
        storedValue1 = newString.doubleValue
        label.text = ""
    }
    
    @IBAction func divisionAction(sender: AnyObject) {
        whichFunction = "division"
        let newString = label.text! as NSString
        storedValue1 = newString.doubleValue
        label.text = ""
    }
    
    
    @IBAction func equalsAction(sender: AnyObject) {
        let newString = label.text! as NSString
        storedValue2 = newString.doubleValue
        switch whichFunction {
            case "addition":
                finalValue = storedValue1 + storedValue2
                if finalValue % 1 == 0 {
                    let finalIntValue = Int(finalValue)
                    label.text = String(finalIntValue)
                } else {
                    label.text = finalValue.description
                }
                storedValue1 = 0
                storedValue2 = 0
            case "subtraction":
                finalValue = storedValue1 - storedValue2
                if finalValue % 1 == 0 {
                    let finalIntValue = Int(finalValue)
                    label.text = String(finalIntValue)
                } else {
                    label.text = finalValue.description
                }
                storedValue1 = 0
                storedValue2 = 0
            case "multiplication":
                finalValue = storedValue1 * storedValue2
                if finalValue % 1 == 0 {
                    let finalIntValue = Int(finalValue)
                    label.text = String(finalIntValue)
                } else {
                    label.text = finalValue.description
                }
                storedValue1 = 0
                storedValue2 = 0
            case "division":
                finalValue = storedValue1 / storedValue2
                if finalValue % 1 == 0 {
                    let finalIntValue = Int(finalValue)
                    label.text = String(finalIntValue)
                } else {
                    label.text = finalValue.description
                }
                storedValue1 = 0
                storedValue2 = 0
            default:
                println("default")
    }
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

