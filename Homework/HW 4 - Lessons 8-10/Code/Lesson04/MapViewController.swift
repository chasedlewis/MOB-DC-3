//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextViewDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var firstTextView: UITextView!
    @IBOutlet weak var secondTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    var dict = [[String: String]]()
    let cellID = "CellID2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTextView.delegate = self
        secondTextView.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
    
    
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        self.view.endEditing(true)
        
        dict = [[self.FirstTextView.text: self.SecondTextView.text]]
        println(dict)
        
        TableView.reloadData()
        return true

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dict.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text =
        
    }
    

    
    
    
}
