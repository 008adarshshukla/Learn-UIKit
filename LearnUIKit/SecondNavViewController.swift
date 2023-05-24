//
//  SecondNavViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 23/05/23.
//

import UIKit

class SecondNavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gotoVC3Pressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdNavViewController")
        
        //MARK: Segue type is "show"
        self.show(thirdVC, sender: nil)
    }
    
}
