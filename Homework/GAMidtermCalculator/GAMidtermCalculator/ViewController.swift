//
//  ViewController.swift
//  GAMidtermCalculator
//
//  Created by Chase Lewis on 7/15/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var labelXConstraint: NSLayoutConstraint!
    @IBOutlet weak var label: CalcLabel!
    @IBOutlet weak var allClearButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Variables and Constants
    
    var storedValue1:Double = 0
    var storedValue2:Double = 0
    var finalValue: Double = 0
    var whichFunction: String = ""
    var functionButtonPressed: Bool = false
    var equalsButtonPressed: Bool = false
    var clearFunctionPressed: Bool = false
    var zeroButtonPressed: Bool = false
    let cellID = "historyCell"
    var textArray = [String]()
    var myBlueColor: UIColor = UIColor(red: (142/255.0), green: (242/255.0), blue: (173/255.0), alpha: 1.0)
    let unitedStatesLocale = NSLocale(localeIdentifier: "en_US")
    let numberFormatter = NSNumberFormatter()
    
    // MARK: Setup Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.backgroundColor = .blackColor()
        label.backgroundColor = .blackColor()
        
        let longPressGR = UILongPressGestureRecognizer()
        longPressGR.addTarget(self, action: "textPressed:")
        label.addGestureRecognizer(longPressGR)
        
        numberFormatter.numberStyle = .DecimalStyle
        numberFormatter.locale = unitedStatesLocale
        numberFormatter.maximumFractionDigits = 15
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    // MARK: Number Conversion Functions
    
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
        if count(label.text!) > 11 && functionButtonPressed == false {
            labelShake(label)
        } else {
            if label.text == "0" || (functionButtonPressed && label.text != "0") || equalsButtonPressed {
                label.text = "\(buttonNumber)"
            } else {
                label.text! += "\(buttonNumber)"
                var currentTextDouble = toDoubleFromString()
                if (label.text?.rangeOfString(".") != nil) && (zeroButtonPressed == true) {
                    // Do nothing
                } else {
                    var updatedTextString = numberFormatter.stringFromNumber(currentTextDouble)
                    label.text = updatedTextString!
                }
            }
            equalsButtonPressed = false
            functionButtonPressed = false
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
    
    // MARK: Clear/Negative/Percentage Functions
    
    @IBAction func allClearAction(sender: AnyObject) {
        label.textColor = .whiteColor()
        switch clearFunctionPressed {
            case true :
                storedValue2 = 0
                label.text = ""
                clearFunctionPressed = false
                allClearButton.setTitle("AC", forState: .Normal)
            default:
                storedValue1 = 0
                storedValue2 = 0
                label.text = "0"
            equalsButtonPressed = false
            functionButtonPressed = false
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
    
    // MARK: Number Button Functions
    
    @IBAction func zeroAction(sender: AnyObject) {
        zeroButtonPressed = true
        displayNumber("0")
    }
    
    @IBAction func oneAction(sender: AnyObject) {
        displayNumber("1")
    }
   
    @IBAction func twoAction(sender: AnyObject) {
        displayNumber("2")
    }
    
    @IBAction func threeAction(sender: AnyObject) {
        displayNumber("3")
    }
    
    @IBAction func fourAction(sender: AnyObject) {
        displayNumber("4")
    }
    
    @IBAction func fiveAction(sender: AnyObject) {
        displayNumber("5")
    }
    
    @IBAction func sixAction(sender: AnyObject) {
        displayNumber("6")
    }
    
    @IBAction func sevenAction(sender: AnyObject) {
        displayNumber("7")
    }
    
    @IBAction func eightAction(sender: AnyObject) {
        displayNumber("8")
    }
    
    @IBAction func nineAction(sender: AnyObject) {
        displayNumber("9")
    }
    
    @IBAction func decimalAction(sender: AnyObject) {
        if (label.text?.rangeOfString(".") != nil) && (equalsButtonPressed == false) && (functionButtonPressed == false) {
            //Do nothing
        } else if (equalsButtonPressed) || (label.text == "0") || (functionButtonPressed) {
            label.text! = "0."
        } else {
            label.text! += "."
        }
        equalsButtonPressed = false
        functionButtonPressed = false
    }
    
    // MARK: Math Functions
    
    @IBAction func additionAction(sender: AnyObject) {
        whichFunction = "addition"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = true
        clearFunctionPressed = true
    }
    
    @IBAction func subtractionAction(sender: AnyObject) {
        whichFunction = "subtraction"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = true
        clearFunctionPressed = true
    }
    
    @IBAction func multiplicationAction(sender: AnyObject) {
        whichFunction = "multiplication"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = true
        clearFunctionPressed = true
    }
    
    @IBAction func divisionAction(sender: AnyObject) {
        whichFunction = "division"
        storedValue1 = toDoubleFromString()
        allClearButton.setTitle("C", forState: .Normal)
        functionButtonPressed = true
        clearFunctionPressed = true
    }
    
    
    @IBAction func equalsAction(sender: AnyObject) {
        storedValue2 = toDoubleFromString()
        functionButtonPressed = false
        equalsButtonPressed = true
        clearFunctionPressed = false
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
        
        // Prevent app from crashing when equals button is pressed first
        if whichFunction == "" {
            // Do nothing
        } else {
            let indexPathToScrollTo = NSIndexPath(forRow: textArray.count - 1, inSection: 0)
            tableView.scrollToRowAtIndexPath(indexPathToScrollTo, atScrollPosition: UITableViewScrollPosition.Bottom, animated: true)
        }
}
    
    // MARK: Table View Setup
    
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
        cell?.textLabel?.textColor = .grayColor()
        var equationArray: [String] = split(textArray[indexPath.row]) {$0 == " "}
        if let finalValue = equationArray.last {
            label.text = finalValue
        }
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.textLabel?.textColor = .whiteColor()
    }
    
    // MARK: Menu Controller Setup
    
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
    
    // MARK: Animations
    
    func labelShake(label: UILabel) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.12
        animation.repeatCount = 0
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPointMake(label.center.x - 5, label.center.y))
        animation.toValue = NSValue(CGPoint: CGPointMake(label.center.x + 5, label.center.y))
        label.layer.addAnimation(animation, forKey: "position")
    }
    
    // MARK: Memory Warning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}