//
//  ViewController.swift
//  Lesson15PList
//
//  Created by Chase Lewis on 7/22/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let studentPath = NSBundle.mainBundle().pathForResource("Students", ofType: "plist") // mainBundle() is a singleton
        
        if let studentPath = studentPath {
            let students = NSArray(contentsOfFile: studentPath)
        }
        
        let instructorPath = NSBundle.mainBundle().pathForResource("Students", ofType: "plist")
        
        if let instructorPath = instructorPath {
            let instructors = NSArray(contentsOfFile: instructorPath)
        }
    }
}