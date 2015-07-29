//
//  StudentStore.swift
//  Students
//
//  Created by Chase Lewis on 7/27/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData

class StudentStore {
    
    static let sharedStore = StudentStore() // Creates a singleton
    
    var context: NSManagedObjectContext
    
    init() {
        println("Student store created")
        
        // Get a reference to app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // Get its context
        context = appDelegate.managedObjectContext!
    }
    
    func addStudent(name: String, location: String) {
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: context) as! Student // Have to explicitly say its type
        
        // This part is possible because we made this a subclass of Student
        newStudent.name = name
        newStudent.location = location
        
        var error: NSError?
        context.save(&error) // The "and" has to be there just because
        
        if error != nil {
            println("An error occurred while adding a student")
        }
    }
    
    
    // Gets all of the students from the core data and presents them as an array
    // You have to use fetch requests to get information from the core data
    func getAllStudents() -> [Student] {
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        let fetchRequest = NSFetchRequest(entityName: "Student")
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        var error: NSError?
        let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
        
        if error != nil {
            println("COuld not fetch students")
        }
        
        return results
    }
    
    func removeStudent(student:Student) {
        context.deleteObject(student)
        context.save(nil)
    }
}