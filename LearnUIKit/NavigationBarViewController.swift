//
//  NavigationBarViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 17/04/23.
//

import UIKit

class NavigationBarViewController: UIViewController {
    
    var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationBar = UINavigationBar()
        //height is predefined
        navigationBar.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 60)
        navigationBar.barStyle = UIBarStyle.default
        navigationBar.isTranslucent = true
        navigationBar.barTintColor = UIColor.systemCyan.withAlphaComponent(0.1)
        navigationBar.tintColor = .cyan
        
        self.view.addSubview(navigationBar)
        
        //items in navigation bar -
        let item = UINavigationItem()
        //assigning the title.
        item.title = "Navigation Title"
        
        navigationBar.items = [item]
        
        //UIBarButton programmatically.
        let barButton = UIBarButtonItem(image: UIImage(systemName: "info.circle"), style: .done, target: self, action: #selector(rightBarButtonClicked))
        
        item.rightBarButtonItem = barButton
        
    }
    
    //func called when rigth button is clicked.
    @objc func rightBarButtonClicked() {
        self.view.backgroundColor = UIColor.blue
    }
}
