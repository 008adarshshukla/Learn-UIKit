//
//  ModalSegueSecondViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 22/05/23.
//

import UIKit

class ModalSegueSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: This function is called when this view controller performs any segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoFirst" {
            print("gotoFirst Initiated")
        }
    }
    
    //MARK: Function to dismiss the presented View Controller.
    @IBAction func didTapDismiss(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
}
