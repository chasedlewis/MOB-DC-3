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
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageField: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var sexField: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if let name = name {
            nameField.text = name
            nameField.textColor = UIColor.blueColor()
        }
        
        if let age = age {
            ageField.text = age
            ageField.textColor = UIColor.blueColor()
        }
        
        if let sex = sex {
            sexField.text = sex
            sexField.textColor = UIColor.blueColor()
        }
        
        if let location = location {
            locationField.text = location
            locationField.textColor = UIColor.blueColor()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
