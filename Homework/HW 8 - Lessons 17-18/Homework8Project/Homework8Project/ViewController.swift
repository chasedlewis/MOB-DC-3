//
//  ViewController.swift
//  Homework8Project
//
//  Created by Chase Lewis on 7/29/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        task1()
        task2()
    
    }
    
    func task1() {
        Alamofire
            .request(.GET, "http://google.com")
            .response { (request, response, data, error) -> Void in
                let source = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //println(source)
        }
    
    }
    
    func task2() {
        Alamofire
            .request(.GET, "http://gnjgnejsgr.com")
            .response { (request, response, data, error) -> Void in
                
                if let error = error {
                    println(error)
                } else {
                    println("No error")
                }
        }
        
    }

}

