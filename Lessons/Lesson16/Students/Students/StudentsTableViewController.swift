//
//  StudentsTableViewController.swift
//  Students
//
//  Created by LOANER on 7/26/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController, StudentDelegate {
    
    weak var store = StudentStore.sharedStore
    var students = [Student]()
    var selectedStudent: Student?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        students = store!.getAllStudents()
        tableView.reloadData()
    }
    
    // This is how you set this view controller as the delegate
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        if segue.identifier == "addStudent" {
            let destinationVC = segue.destinationViewController as! UINavigationController
            let addVC = destinationVC.topViewController as! AddViewController
            
            addVC.delegate = self
        }
    }
    
    // MARK: - Student Delegate
    func addStudent(name: String, location: String) {
        store?.addStudent(name, location: location)
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("studentCell", forIndexPath: indexPath) as! UITableViewCell
        
        let studentForRow = students[indexPath.row]
        cell.textLabel?.text = studentForRow.name
        cell.detailTextLabel?.text = studentForRow.location

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedStudent = students[indexPath.row]
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            store?.removeStudent(students[indexPath.row])
            students.removeAtIndex(indexPath.row) // Always delete from the data source first then visually
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
}
