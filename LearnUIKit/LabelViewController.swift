//
//  LabelViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 14/04/23.
//

import UIKit

class LabelViewController: UIViewController {
    
    //this is a variable of type UILabel
    //@IBOutlet is a keyword in Swift that is used to create a connection between a user interface element defined in a Storyboard or XIB file and an outlet property in your code
    @IBOutlet var myLabel: UILabel!
    
    //programatic label
    var programaticLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "Text from storyboard."
        
        programaticLabel = UILabel()
        //necessary to apply frame to appear on the view.
        programaticLabel.frame = CGRect(x: 50, y: 240, width: 280, height: 100)
        programaticLabel.text = "Label Programmatically\n Adarsh\n Shukla"
        programaticLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        programaticLabel.textColor = UIColor.white
        programaticLabel.backgroundColor = UIColor(red: 254 / 255, green: 208 / 255, blue: 55 / 255, alpha: 1)
        programaticLabel.shadowColor = UIColor.red
        programaticLabel.shadowOffset = CGSize(width: 2, height: 2)
        programaticLabel.textAlignment = NSTextAlignment.center
        programaticLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        programaticLabel.highlightedTextColor = UIColor.green
        programaticLabel.isHighlighted = false
        programaticLabel.isUserInteractionEnabled = true
        programaticLabel.isEnabled = true
        programaticLabel.numberOfLines = 0
        //to be used after numberOfLines
        //frame will be overriden.
        programaticLabel.sizeToFit()
        programaticLabel.adjustsFontSizeToFitWidth = true
        programaticLabel.baselineAdjustment = UIBaselineAdjustment.alignCenters
        //adding to the view.
        self.view.addSubview(programaticLabel)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.text = "View will appear.(Storyboard label)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myLabel.text = "View Did appear.(Storyboard label)"
    }
}
/*
 if we set number of lines equals zero then the the label takes as many lines as required otherwise it takes specified number of lines.
 */

/*
 Weak and Strong Storage while creating IBOutlet -
 The difference between weak and strong storage is in how they affect the reference counting of the object that the IBOutlet property points to.
 
 weak storage: Declaring an IBOutlet property as weak means that the reference to the user interface element is not retained by the view controller. This is typically used for outlets that connect to subviews of a view controller's main view, or to outlets that connect to elements that are owned by another object, such as a table view cell or collection view cell. When the user interface element is deallocated, the weak reference is automatically set to nil. This prevents the view controller from holding onto a reference to a deallocated object and causing a memory leak.
 
 strong storage: Declaring an IBOutlet property as strong means that the reference to the user interface element is retained by the view controller. This is typically used for outlets that connect to top-level objects in a Storyboard or XIB file, such as a view controller's main view or a navigation bar. The strong reference ensures that the object is not deallocated as long as the view controller holds a reference to it.
 */
