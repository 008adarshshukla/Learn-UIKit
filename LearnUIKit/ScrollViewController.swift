//
//  ScrollViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 16/04/23.
//

import UIKit

class ScrollViewController: UIViewController {
    
    var programmaticScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        programmaticScrollView = UIScrollView()
        programmaticScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        //content offset - indicates the current offset of the scroll view's content view from its original position.
        programmaticScrollView.contentOffset = CGPoint(x: 0, y: 0)
        programmaticScrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 3)
        
        programmaticScrollView.contentInset = UIEdgeInsets.zero
        
        //If isDirectionalLockEnabled is set to true, the UIScrollView will lock scrolling to a single direction until a significant change in direction is detected. For example, if the user is scrolling horizontally and then tries to scroll vertically, the scroll view will wait until the user has scrolled a certain distance in the vertical direction before allowing scrolling in that direction. This can be useful in cases where you want to prevent accidental scrolling in the wrong direction.
        programmaticScrollView.isDirectionalLockEnabled = true
        
        programmaticScrollView.bounces = true
        programmaticScrollView.isPagingEnabled = true
        programmaticScrollView.isScrollEnabled = true
        
        programmaticScrollView.showsVerticalScrollIndicator = true
        programmaticScrollView.showsHorizontalScrollIndicator = false
        programmaticScrollView.scrollIndicatorInsets = .zero
        programmaticScrollView.indicatorStyle = .black
        
        //It is used to control the rate of deceleration after the user lifts their finger from the screen while scrolling.
        programmaticScrollView.decelerationRate = .normal
        //displays the scroll indicators for a short time.
        programmaticScrollView.flashScrollIndicators()
        
        programmaticScrollView.scrollsToTop = true
        //Controls how the keyboard is dismissed when a user scrolls within the scroll view.
        programmaticScrollView.keyboardDismissMode = .onDrag
        programmaticScrollView.backgroundColor = .orange
        
        self.view.addSubview(programmaticScrollView)
    }
}
