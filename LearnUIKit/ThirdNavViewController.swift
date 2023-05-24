//
//  ThirdNavViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 24/05/23.
//

import UIKit

class ThirdNavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoRootVCPressed(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
