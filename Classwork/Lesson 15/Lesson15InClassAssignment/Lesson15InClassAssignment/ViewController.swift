//
//  ViewController.swift
//  Lesson15InClassAssignment
//
//  Created by Chase Lewis on 7/22/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    var movieArray = [String]?()
    
    let movieID = "movieID"
    let movieDefault = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieArray = movieDefault.arrayForKey(movieID) as? [String]
        
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        if textField.text != "" {
            movieArray!.append(textField.text)
        }
        textField.text = ""
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        movieDefault.setObject(movieArray, forKey: movieID)
        
        println(movieArray)
    }

}

