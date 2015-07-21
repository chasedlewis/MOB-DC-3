//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        let square1 = UIView()
        square1.setTranslatesAutoresizingMaskIntoConstraints(false)
        square1.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square1)
        
        let square2 = UIView()
        square2.setTranslatesAutoresizingMaskIntoConstraints(false)
        square2.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square2)
        
        let square3 = UIView()
        square3.setTranslatesAutoresizingMaskIntoConstraints(false)
        square3.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square3)
        
        let square4 = UIView()
        square4.setTranslatesAutoresizingMaskIntoConstraints(false)
        square4.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square4)
        
        let metrics = ["width": 60, "height": 60]
        let views = ["square1": square1, "square2": square2, "square3": square3, "square4": square4]
        
        let square1WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square1(width)]", // H means you're working horizontally, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a width you'd like...this corresponds to the "width" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        let square1HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square1(height)]", // V means you're working vertically, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a height you'd like...this corresponds to the "height" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        exerciseView.addConstraints(square1WidthConstraints)
        exerciseView.addConstraints(square1HeightConstraints)
        
        let square2WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square2(width)]|", // H means you're working horizontally, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a width you'd like...this corresponds to the "width" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        let square2HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square2(height)]", // V means you're working vertically, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a height you'd like...this corresponds to the "height" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        exerciseView.addConstraints(square2WidthConstraints)
        exerciseView.addConstraints(square2HeightConstraints)
        
        let square3WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square3(width)]", // H means you're working horizontally, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a width you'd like...this corresponds to the "width" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        let square3HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square3(height)]-(44)-|", // V means you're working vertically, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a height you'd like...this corresponds to the "height" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        exerciseView.addConstraints(square3WidthConstraints)
        exerciseView.addConstraints(square3HeightConstraints)
        
        let square4WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square4(width)]|", // H means you're working horizontally, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a width you'd like...this corresponds to the "width" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        let square4HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square4(height)]-(44)-|", // V means you're working vertically, Pipe means hug the left wall, inside brackets means that you're operating on square1, in perenthesis is how much of a height you'd like...this corresponds to the "height" in the metrics dict
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics, // Access a word that represents a number, like width and height above
            views: views)
        
        exerciseView.addConstraints(square4WidthConstraints)
        exerciseView.addConstraints(square4HeightConstraints)
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
