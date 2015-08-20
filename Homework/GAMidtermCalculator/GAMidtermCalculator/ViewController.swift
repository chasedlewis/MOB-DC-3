//
//  ViewController.swift
//  GAMidtermCalculator
//
//  Created by Chase Lewis on 7/15/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var labelXConstraint: NSLayoutConstraint!


    
    @IBOutlet weak var label: CalcLabel!
    @IBOutlet weak var allClearButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var storedValue1:Double = 0
    var storedValue2:Double = 0
    var finalValue: Double = 0
    var whichFunction: String = ""
    var functionButtonPressed: String = ""
    var signButtonPressed: String = ""
    var equalsButtonPressed: String = ""
    var clearFunctionPressed: String = ""
    var zeroButtonPressed: Bool = false
    let cellID = "historyCell"
    var textArray = [String]()
    var myBlueColor: UIColor = UIColor(red: (72/255.0), green: (206/255.0), blue: (192/255.0), alpha: 1.0)
    let unitedStatesLocale = NSLocale(localeIdentifier: "en_US")
    let numberFormatter = NSNumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.backgroundColor = .blackColor()
        
        let longPressGR = UILongPressGestureRecognizer()
        longPressGR.addTarget(self, action: "textPressed:")
        label.addGestureRecognizer(longPressGR)
        
        numberFormatter.numberStyle = .DecimalStyle
        numberFormatter.locale = unitedStatesLocale
        numberFormatter.maximumFractionDigits = 15
    }
    
    func toDoubleFromString() -> Double {
        let currentValue = label.text! as NSString
        var valueWithoutCommas = currentValue.stringByReplacingOccurrencesOfString(",", withString: "") as NSString
        var number = valueWithoutCommas.doubleValue
        return number
    }
    
    func toStringToDisplay(doubleNumber:Double) {
        if doubleNumber % 1 == 0 {
            let newNumber = Int(doubleNumber)
            label.text = numberFormatter.stringFromNumber(newNumber)!
        } else {
            label.text = "\(numberFormatter.stringFromNumber(doubleNumber)!)"
        }
    }
    
    func displayNumber(buttonNumber: String) {
        if label.text == "0" || (functionButtonPressed == "yes" && label.text != "0") || equalsButtonPressed == "yes" {
            label.text = "\(buttonNumber)"
        } else {
            label.text! += "\(buttonNumber)"
            var currentTextDouble = toDoubleFromString()
            if (label.text?.rangeOfString(".") != nil) && (zeroButtonPressed == true) {
//                numberFormatter.minimumFractionDigits = 1
//                var updatedTextString = numberFormatter.stringFromNumber(currentTextDouble)
//                numberFormatter.minimumFractionDigits = 0
//                label.text = updatedTextString!
            } else {
                var updatedTextString = numberFormatter.stringFromNumber(currentTextDouble)
                label.text = updatedTextString!
            }
        }
    }
    
    func prepareForTableView(doubleNumber: Double) -> String {
        if doubleNumber % 1 == 0 {
            let newNumber = Int(doubleNumber)
            return String(newNumber)
        } else {
            return "\(doubleNumber)"
        }
    }
    
    @IBAction func allClearAction(sender: AnyObject) {
        label.textColor = .whiteColor()
        switch clearFunctionPressed {
            case "yes":
                storedValue2 = 0
                label.text = ""
                clearFunctionPressed = "no"
                allClearButton.setTitle("AC", forState: .Normal)
            default:
                storedValue1 = 0
                storedValue2 = 0
                label.text = "0"
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }

    @IBAction func negativeAction(sender: AnyObject) {
        var doubleNumber = toDoubleFromString()
        doubleNumber = -1 * doubleNumber
        toStringToDisplay(doubleNumber)
    }
    
    @IBAction func percentageAction(sender: AnyObject) {
        var doubleNumber = toDoubleFromString()
        doubleNumber = doubleNumber / 100
        toStringToDisplay(doubleNumber)
    }
    
    @IBAction func zeroAction(sender: AnyObject) {
        zeroButtonPressed = true
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("0")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func oneAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("1")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
   
    @IBAction func twoAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("2")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func threeAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
           label.textColor = .grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("3")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func fourAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
        displayNumber("4")
        equalsButtonPressed = "no"
        functionButtonPressed = "no"
        }
    }
    
    @IBAction func fiveAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("5")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func sixAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("6")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func sevenAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("7")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func eightAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("8")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func nineAction(sender: AnyObject) {
        if count(label.text!) > 11 && functionButtonPressed == "no" {
            label.textColor = UIColor.grayColor()
        } else {
            label.textColor = UIColor.whiteColor()
            displayNumber("9")
            equalsButtonPressed = "no"
            functionButtonPressed = "no"
        }
    }
    
    @IBAction func decimalAction(sender: AnyObject) {
        if (label.text?.rangeOfString(".") != nil) && (equalsButtonPressed == "no") && (functionButtonPressed == "no") {
            //Do nothing
        } else if (equalsButtonPressed == "yes") || (label.text == "0") || (functionButtonPressed == "yes") {
            label.text! = "0."
        } else {
            label.text! += "."
        }
        equalsButtonPressed = "no"
        functionButtonPressed = "no"
    }
    
    @IBAction func additionAction(sender: AnyObject) {
        whichFunction = "addition"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = "yes"
        clearFunctionPressed = "yes"
    }
    
    @IBAction func subtractionAction(sender: AnyObject) {
        whichFunction = "subtraction"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = "yes"
        clearFunctionPressed = "yes"
    }
    
    @IBAction func multiplicationAction(sender: AnyObject) {
        whichFunction = "multiplication"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = "yes"
        clearFunctionPressed = "yes"
    }
    
    @IBAction func divisionAction(sender: AnyObject) {
        whichFunction = "division"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = "yes"
        clearFunctionPressed = "yes"
    }
    
    
    @IBAction func equalsAction(sender: AnyObject) {
        storedValue2 = toDoubleFromString()
        functionButtonPressed = "no"
        equalsButtonPressed = "yes"
        clearFunctionPressed = "no"
        allClearButton.setTitle("AC", forState: .Normal)
        label.textColor = .whiteColor()
        switch whichFunction {
            case "addition":
                finalValue = storedValue1 + storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(numberFormatter.stringFromNumber(storedValue1)!) + \(numberFormatter.stringFromNumber(storedValue2)!) = \(numberFormatter.stringFromNumber(finalValue)!)")
            case "subtraction":
                finalValue = storedValue1 - storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(numberFormatter.stringFromNumber(storedValue1)!) - \(numberFormatter.stringFromNumber(storedValue2)!) = \(numberFormatter.stringFromNumber(finalValue)!)")
            case "multiplication":
                finalValue = storedValue1 * storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(numberFormatter.stringFromNumber(storedValue1)!) x \(numberFormatter.stringFromNumber(storedValue2)!) = \(numberFormatter.stringFromNumber(finalValue)!)")
            case "division":
                finalValue = storedValue1 / storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(numberFormatter.stringFromNumber(storedValue1)!) ÷ \(numberFormatter.stringFromNumber(storedValue2)!) = \(numberFormatter.stringFromNumber(finalValue)!)")
            default:
                println("default")
        }
        
        tableView.reloadData()
        storedValue1 = 0
        storedValue2 = 0
        
        if whichFunction == "" {
            // Do nothing to avoid the app from crashing
        } else {
            let indexPathToScrollTo = NSIndexPath(forRow: textArray.count - 1, inSection: 0)
            tableView.scrollToRowAtIndexPath(indexPathToScrollTo, atScrollPosition: UITableViewScrollPosition.Bottom, animated: true)
        }
}
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.textArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = self.textArray[indexPath.row]
        cell.backgroundColor = UIColor.blackColor()
        cell.selectionStyle = .None
        cell.textLabel?.font = UIFont(name: "Helvetica-light", size: 20.0)
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            textArray.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.textLabel?.textColor = myBlueColor
        var equationArray: [String] = split(textArray[indexPath.row]) {$0 == " "}
        if let finalValue = equationArray.last {
            label.text = finalValue
        }
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.textLabel?.textColor = .whiteColor()
    }
    
    @IBAction func pasteboardAction(sender: UILongPressGestureRecognizer) {
        if label.text != "" {
            textPressed(sender)
        }
    }
    
    func textPressed(recognizer: UILongPressGestureRecognizer) {
        if recognizer.state == UIGestureRecognizerState.Began {
 
            let location = recognizer.locationInView(recognizer.view)
            let menu = UIMenuController.sharedMenuController()
            let itemCopy = UIMenuItem(title: "Copy", action: "copyLabelText")
            let items = [itemCopy]
            assert(label.becomeFirstResponder(), "label is not FR")
            menu.menuItems = items
            menu.setTargetRect(CGRectMake(location.x, location.y, 0.0, 0.0), inView: label)
            menu.setMenuVisible(true, animated: true)
            
        }
    }
    
    func copyLabelText() {
        var pasteBoard = UIPasteboard.generalPasteboard()
        if let text = label.text {
            pasteBoard.string = text
        }
    }
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let cell = self.tableView.cellForRowAtIndexPath(indexPath)
//        let cellText = cell?.textLabel?.text
//        if let cellText = cellText {
//            label.text = cellText
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

/*
    Problems:
              Fix problem with crashing when a huge number is operated on
              Make animation for label size
*/

