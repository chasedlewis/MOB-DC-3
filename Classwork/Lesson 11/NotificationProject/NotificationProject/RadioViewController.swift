//
//  RadioViewController.swift
//  NotificationProject
//
//  Created by Chase Lewis on 7/8/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import Foundation
import UIKit

class RadioViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let notification = NSNotification(name: "Keyword", object: Self)
    let center = NSNotificationCenter.defaultCenter()
    center.PostNotification(notification)
    
}