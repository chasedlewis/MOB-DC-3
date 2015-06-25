/*

Order of operations to pass data

1. Drag a segue in your storyboard (from a button to another screen)
2. Give segue and identifier in the identity inspector (make sure your segue is highlighted)
3. Have the prepareForSegue method in the VC where you have access to the initial data
4. Call super.prepareForSegue
5. Check for the identifier that is best practice optional binded
6. Get the destinationViewController and cast it to your custcom class (as! MyVC)
7. Set properties on destinationViewController
8. In viewDidLoad in destinationViewController do something with your data (optional)
*/

// For example...

override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { // Prepares information from the login VC to the profile VC
    if segue.identifier == "showProfile" { // This is how you access a specific segue
        let destinationVC = segue.destinationViewController as! ProfileViewController // Force unwraps the segue so that you're sure it's the ProfileVC
        destinationVC.age = ageField.text
        destinationVC.name = nameField.text
        destinationVC.sex = sexField.text
        destinationVC.location = locationField.text
    }
}
