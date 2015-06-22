//
//  ViewController.swift
//  Lesson 5 Code Along
//
//  Created by LOANER on 6/17/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var generateButton: UIButton!
    
    var numberOfTimes = 0
    var factbook = Factbook()
    var colorWheel = Colorwheel()
    
    override func viewDidLoad() { // Entry point when the view controller is ready
        super.viewDidLoad()
        factLabel.text = "Hello"
    }
    @IBAction func generateFact(sender: UIButton) {
//        ++numberOfTimes
//        factLabel.text = "Hit \(numberOfTimes) number of times"
        
        let randomFact = factbook.randomFact()
        factLabel.text = randomFact
        
        let randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        
        generateButton.setTitleColor(randomColor, forState: UIControlState.Normal)
    }
    /*
    // class UIView controller: NSObject {
            var view: UIview
    }
*/

}

