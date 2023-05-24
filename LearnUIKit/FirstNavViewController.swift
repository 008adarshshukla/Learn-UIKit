//
//  FirstNavViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 23/05/23.
//

import UIKit

class FirstNavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoVC2Pressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondNavViewController")
        
        //MARK: Segue type is "show"
        self.show(secondVC, sender: nil)
    }
    
}

//MARK: Important Points

/*
 1. The back button belongs to the previous view controller, not the one currently presented on screen. To modify the back button you should update it before pushing, on the view controller that initiated the segue.
 
 2. Use "push" segue that appears by the name of "show".
 
 3. Using the "show" segue from a ViewController_x to ViewController_y also brings the ViewController_y under the NavigationController under which ViewController_x is. Lets say that we create a "modalPresentation" segue from ViewController_y to ViewController_z, then ViewController_z does not become the part of the previous NavigationController. Although we can put ViewController_z under different NavigationController by embedding it.
 
 */
