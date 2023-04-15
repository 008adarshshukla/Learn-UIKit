//
//  ButtonViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 15/04/23.
//

import UIKit

class ButtonViewController: ViewController {
    
    @IBOutlet var myLabel: UILabel!
    
    var programmaticButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //programmaticButton
        programmaticButton = UIButton(type: .system)
        
        programmaticButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        programmaticButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        programmaticButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        programmaticButton.frame = CGRect(x: 20, y: 70, width: 300, height: 45)
        programmaticButton.setTitle("Press me", for: .normal)
        programmaticButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        programmaticButton.backgroundColor = UIColor.blue
        programmaticButton.sizeToFit()
        programmaticButton.center.x = self.view.center.x
        programmaticButton.layer.cornerRadius = 10
        
        programmaticButton.addTarget(self, action: #selector(ButtonViewController.programmaticButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(programmaticButton)
    }
    
    //called when the button is clicked.
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        myLabel.text = "button Pressed"
        myLabel.sizeToFit()
    }
    
    @objc
    func programmaticButtonPressed() {
        myLabel.text = "Hello from programmatic button."
    }
    
}
