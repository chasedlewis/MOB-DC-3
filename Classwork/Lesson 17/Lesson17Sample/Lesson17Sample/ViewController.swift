//
//  ViewController.swift
//  Lesson17Sample
//
//  Created by Chase Lewis on 7/29/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.Get, "http://httpbin.org/get", parameters: ["foo": "bar"])
            .response { request, response, data, error in
                println(request)
                println(response)
                println(error)
    }
}

