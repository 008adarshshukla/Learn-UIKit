//
//  ScrollViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 16/04/23.
//

import UIKit

class ScrollViewController: UIViewController {
    
    var programmaticScrollView: UIScrollView!
    var height : CGFloat = 0.0
    var myLabel: UILabel!
    var gotoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label programmatically.
        myLabel = UILabel()
        myLabel.frame = CGRect(x: 0, y: 60, width: self.view.frame.width, height: 40)
        myLabel.text = "Scroll Status..."
        myLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        myLabel.textAlignment = .center
        
        self.view.addSubview(myLabel)
        
        //creating buttom programmatically.
        gotoButton = UIButton()
        gotoButton.frame = CGRect(x: 10, y: 120, width: 300, height: 45)
        gotoButton.setTitle("Go to", for: .normal)
        gotoButton.backgroundColor = UIColor.blue
        gotoButton.center.x = self.view.center.x
        gotoButton.layer.cornerRadius = 10
        gotoButton.addTarget(self, action: #selector(goToClicked), for: .touchUpInside)
        
        self.view.addSubview(gotoButton)
        
        //scrollview programmatically.
        programmaticScrollView = UIScrollView()
        programmaticScrollView.delegate = self
        programmaticScrollView.frame = CGRect(x: 0, y: 185, width: self.view.frame.width, height: self.view.frame.height)
        
        //content offset - indicates the current offset of the scroll view's content view from its original position.
        programmaticScrollView.contentOffset = CGPoint(x: 0, y: 0)
        
        
        programmaticScrollView.contentInset = UIEdgeInsets.zero
        
        //If isDirectionalLockEnabled is set to true, the UIScrollView will lock scrolling to a single direction until a significant change in direction is detected. For example, if the user is scrolling horizontally and then tries to scroll vertically, the scroll view will wait until the user has scrolled a certain distance in the vertical direction before allowing scrolling in that direction. This can be useful in cases where you want to prevent accidental scrolling in the wrong direction.
        programmaticScrollView.isDirectionalLockEnabled = true
        
        programmaticScrollView.bounces = false
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
        programmaticScrollView.backgroundColor = .systemBackground
        
        //objects of the scroll view
        
        for i in 0..<10 {
            let rectangleView = UIView(frame: CGRect(x: 20, y: (110 * i) + 5, width: Int(programmaticScrollView.frame.width - 40), height: 100))
            rectangleView.backgroundColor = .gray.withAlphaComponent(0.3)
            rectangleView.layer.cornerRadius = 10
            rectangleView.layer.shadowColor = #colorLiteral(red: 0.1324350834, green: 0.1374175251, blue: 0.1373307109, alpha: 1)
            rectangleView.layer.shadowRadius = 5
            programmaticScrollView.addSubview(rectangleView)
            
            //setting the height
            height = rectangleView.frame.maxY
        }
        
        programmaticScrollView.contentSize = CGSize(width: self.view.frame.width, height: self.height + 200)
        
        self.view.addSubview(programmaticScrollView)
        
    }
    
    
    @objc func goToClicked() {
        
    }
}

//extending th ScrollViewController to implement delgate maethods.
extension ScrollViewController: UIScrollViewDelegate {
    
    //This method is called when the scroll view's content offset changes. You can use this method to respond to     changes in the scroll view's content offset, such as updating the position of other views or updating the content of the scroll view.
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Did scroll")
    }
    
    //This method is called when the user starts dragging the scroll view. You can use this method to perform any setup or updates that need to be done before the scroll view starts scrolling.
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Will begin dragging")
    }
    
    // This method is called when the user stops dragging the scroll view. You can use this method to perform any cleanup or updates that need to be done after the scroll view stops scrolling.
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("Will end dragging")
    }
    
    // secondly exec when dragging ends
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("Did end dragging")
    }
    
    // This method is called when the scroll view is about to start decelerating after the user stops dragging it. You can use this method to perform any setup or updates that need to be done before the scroll view starts decelerating.
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("Will begin decel")
    }
    
    // This method is called when the scroll view has finished decelerating after the user stops dragging it.
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Did end decel")
    }
    
    // Called when the scroll view finishes scrolling programmatically.
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        print("SetContentOffset")
    }
    
    // Called when the user begins to zoom the content view.
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        
    }
    
    
    // Called when the content view finishes zooming.
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        
    }
    
    // Called when the content view zooms in or out.
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("Did zoom")
    }
    
    // Called when the content view scrolls to the top, after the user taps the status bar.
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("ScrollToTop")
    }
    
    // Called when the user taps the status bar, allowing for custom behavior when the content view scrolls to the top.
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print("Should ScrollToTop")
        return true
    }
    
    
}
