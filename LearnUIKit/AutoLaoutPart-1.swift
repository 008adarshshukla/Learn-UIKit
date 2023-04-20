//
//  AutoLaoutPart-1.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 20/04/23.
//

import UIKit

class AutoLayout1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "EiffelTower"))
        self.view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //anchoring the horizontal center of the imageView to horizontal center of parent view.
        imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //anchoring the vertical center of the imageView to vertical center of parent view.
        imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        //specifying the width and height anchor
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

/*
 To apply the written constraint set the property "translatesAutoresizingMaskIntoConstraints" for the view to which constraint is to be applied to false.
 Also we need to activate each contraint by setting the property ".isActive" to true for each constraint.
 */
