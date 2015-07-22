//
//  ViewController.swift
//  GAMidtermCalculator
//
//  Created by Chase Lewis on 7/15/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var allClearButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var storedValue1:Double = 0
    var storedValue2:Double = 0
    var finalValue: Double = 0
    var whichFunction: String = ""
    var firstValueStored: String = ""
    var equalsButtonPressed: String = ""
    let cellID = "cellID"
    var textArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    func toDoubleFromString() -> Double {
        let currentValue = label.text! as NSString
        var number = currentValue.doubleValue
        return number
    }
    
    func toStringToDisplay(doubleNumber:Double) {
        if doubleNumber % 1 == 0 {
            let newNumber = Int(doubleNumber)
            label.text = String(newNumber)
        } else {
            label.text = "\(doubleNumber)"
        }
    }
    
    func displayNumber(buttonNumber: String) {
        if label.text == "0" || equalsButtonPressed == "yes" {
            label.text = "\(buttonNumber)"
        } else {
            label.text! += "\(buttonNumber)"
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
        switch firstValueStored {
            case "yes":
                storedValue2 = 0
                label.text = ""
                firstValueStored = "no"
                allClearButton.setTitle("AC", forState: .Normal)
            default:
                storedValue1 = 0
                storedValue2 = 0
                label.text = "0"
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
        displayNumber("0")
        equalsButtonPressed = "no"
    }
    
    @IBAction func oneAction(sender: AnyObject) {
        displayNumber("1")
        equalsButtonPressed = "no"
    }
   
    @IBAction func twoAction(sender: AnyObject) {
        displayNumber("2")
        equalsButtonPressed = "no"
    }
    
    @IBAction func threeAction(sender: AnyObject) {
        displayNumber("3")
        equalsButtonPressed = "no"
    }
    
    @IBAction func fourAction(sender: AnyObject) {
        displayNumber("4")
        equalsButtonPressed = "no"
    }
    
    @IBAction func fiveAction(sender: AnyObject) {
        displayNumber("5")
        equalsButtonPressed = "no"
    }
    
    @IBAction func sixAction(sender: AnyObject) {
        displayNumber("6")
        equalsButtonPressed = "no"
    }
    
    @IBAction func sevenAction(sender: AnyObject) {
        displayNumber("7")
        equalsButtonPressed = "no"
    }
    
    @IBAction func eightAction(sender: AnyObject) {
        displayNumber("8")
        equalsButtonPressed = "no"
    }
    
    @IBAction func nineAction(sender: AnyObject) {
        displayNumber("9")
        equalsButtonPressed = "no"
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
        storedValue1 = toDoubleFromString()
        label.text = ""
        allClearButton.setTitle("C", forState: .Normal)
        firstValueStored = "yes"
    }
    
    @IBAction func subtractionAction(sender: AnyObject) {
        whichFunction = "subtraction"
        storedValue1 = toDoubleFromString()
        label.text = ""
        allClearButton.setTitle("C", forState: .Normal)
        firstValueStored = "yes"
    }
    
    @IBAction func multiplicationAction(sender: AnyObject) {
        whichFunction = "multiplication"
        storedValue1 = toDoubleFromString()
        label.text = ""
        allClearButton.setTitle("C", forState: .Normal)
        firstValueStored = "yes"
    }
    
    @IBAction func divisionAction(sender: AnyObject) {
        whichFunction = "division"
        storedValue1 = toDoubleFromString()
        label.text = ""
        allClearButton.setTitle("C", forState: .Normal)
        firstValueStored = "yes"
    }
    
    
    @IBAction func equalsAction(sender: AnyObject) {
        storedValue2 = toDoubleFromString()
        firstValueStored = "no"
        equalsButtonPressed = "yes"
        allClearButton.setTitle("AC", forState: .Normal)
        switch whichFunction {
            case "addition":
                finalValue = storedValue1 + storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(tableValue1) + \(tableValue2) = \(tableFinal)")
                tableView.reloadData()
                storedValue1 = 0
                storedValue2 = 0
            case "subtraction":
                finalValue = storedValue1 - storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(tableValue1) - \(tableValue2) = \(tableFinal)")
                tableView.reloadData()
                storedValue1 = 0
                storedValue2 = 0
            case "multiplication":
                finalValue = storedValue1 * storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(tableValue1) x \(tableValue2) = \(tableFinal)")
                tableView.reloadData()
                storedValue1 = 0
                storedValue2 = 0
            case "division":
                finalValue = storedValue1 / storedValue2
                toStringToDisplay(finalValue)
                let tableValue1 = prepareForTableView(storedValue1)
                let tableValue2 = prepareForTableView(storedValue2)
                let tableFinal = prepareForTableView(finalValue)
                textArray.append("\(tableValue1) ÷ \(tableValue2) = \(tableFinal)")
                tableView.reloadData()
                storedValue1 = 0
                storedValue2 = 0
            default:
                println("default")
    }
}
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.textArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = self.textArray[indexPath.row]
        cell.backgroundColor = UIColor.blackColor()
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.font = UIFont(name: "Helvetica-light", size: 20.0)
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            textArray.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        self.tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition: UITableViewScrollPosition.Middle, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

