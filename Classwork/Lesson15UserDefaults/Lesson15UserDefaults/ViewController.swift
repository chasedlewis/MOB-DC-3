//
//  ViewController.swift
//  Lesson15UserDefaults
//
//  Created by Chase Lewis on 7/22/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

let counterID = "counterID"
let defaults = NSUserDefaults.standardUserDefaults()

var counter = 0

@IBOutlet weak var label: UILabel!

override func viewDidLoad() {
    super.viewDidLoad()

    counter = defaults.integerForKey(counterID)

    label.text = "\(counter)"
}

@IBAction func buttonAction(sender: AnyObject) {
    counter++
    label.text = "\(counter)"

    defaults.setInteger(counter, forKey: counterID)
    defaults.synchronize() //Guarantees that the value is saved
    
    }
}

// The advantage to using a user default in this case is that when you close the app and reopen it, the same number should appear


/*    let counterID = "counterID"
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults() // standardUserDefaults() is an initializer for NSUserDefaults
        let previousSessionNumber = defaults.integerForKey(counterID)
        label.text = "\(previousSessionNumber)"
        
    }
    
    @IBAction func buttonAction(sender: AnyObject) {
        
        let labelNumber = label.text?.toInt()
        if let labelNumber = labelNumber{
            
            let newNumber = labelNumber + 1
            label.text = "\(newNumber)"
            
            let defaults = NSUserDefaults.standardUserDefaults() // This is a singleton
            defaults.setInteger(newNumber, forKey: counterID)
        }
        
    }
*/