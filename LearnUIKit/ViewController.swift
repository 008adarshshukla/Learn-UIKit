//
//  ViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 14/04/23.
//

import UIKit

class ViewController: UIViewController {

    //first load function.
    //this function loads when the view controller is shown to the user
    
    var programmaticView: UIView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIView programmatically.
        let frame = CGRect(x: 20, y: 150, width: self.view.frame.width - 40, height: 300)
        programmaticView = UIView(frame: frame)
        programmaticView.backgroundColor = .cyan
        programmaticView.layer.cornerRadius = 10
        
        self.view.addSubview(programmaticView)
        
        
        let eiffelImage1 = UIImage(named: "EiffelTower.jpg")!
        imageView = UIImageView()
        imageView.frame = CGRect(x: 20, y: 30, width: programmaticView.frame.width - 40, height: 240)
        imageView.image = eiffelImage1

        programmaticView.addSubview(imageView)
        
    }
}

/*
 viewDidLoad() - This method is called after the view controller has loaded its view hierarchy into memory. This is typically where you would initialize any variables, set up the user interface, or perform any other one-time setup tasks that should only happen when the view is first loaded.
 It is called once per view Controller.
 
 viewWillAppear() - Called when the view is about to made visible. This is called every time the view is about to appear. is is where you would typically perform any additional setup tasks that need to happen each time the view appears, such as updating the user interface to reflect changes that may have occurred while the view was not visible, or fetching data from a remote server.
 
 It is called every time the view is about to be displayed on the screen.
 */

