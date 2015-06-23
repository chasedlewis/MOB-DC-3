//
//  ProfileViewController.swift
//  AIMProject
//
//  Created by Chase Lewis on 6/22/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController
{
    
    var name: String?
    var age: String?
    var sex: String?
    var location: String?
    
    @IBOutlet weak var nameField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let name = name {
            nameField.text = name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
