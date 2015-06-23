//
//  ViewController.swift
//  AIMProject
//
//  Created by Chase Lewis on 6/22/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons()
        
       /* Another way of specifiying the textfield type, as opposed to what is below
        nameField.keyboardType = UIKeyboardType.Default
        ageField.keyboardType = UIKeyboardType.NumberPad // You can get rid of the "UIKeyboardType to make your code shorter, as shown below
        sexField.keyboardType = .Default
        locationField.keyboardType = .Default
        */
    
    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        fieldKeyboardType(nameField)
        fieldKeyboardType(ageField)
        fieldKeyboardType(sexField)
        fieldKeyboardType(locationField)
    }
    
    func fieldKeyboardType(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? UIKeyboardType.NumberPad : UIKeyboardType.ASCIICapable
        textField.textColor = (textField == sexField) ? .redColor() : .blueColor()
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
    @IBAction func submitAction(sender: UIButton) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { // Prepares information from the login VC to the profile VC
        if segue.identifier == "showProfile" { // This is how you access a specific segue
            let destinationVC = segue.destinationViewController as! ProfileViewController // Force unwraps the segue so that you're sure it's the ProfileVC
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

