//
//  ImageViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 16/04/23.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating the UIImage to be placed in the UIImageView.
        let eiffelImage1 = UIImage(named: "EiffelTower.jpg")!
        let eiffelImage2 = UIImage(named: "EiffelTower2.jpg")!
        
        //programmatic Image View.
        let programmaticImageView = UIImageView()
        programmaticImageView.frame = CGRect(x: 62, y: 400, width: 250, height: 250)
        programmaticImageView.image = eiffelImage2
        
        //It is used to set an alternate image to be displayed when the image view is highlighted.
        programmaticImageView.highlightedImage = eiffelImage2
        
        //If isUserInteractionEnabled is set to true, the image view can respond to user interactions such as touch events, tap gestures, and swipe gestures. If it is set to false, the image view will ignore any user interactions.
        programmaticImageView.isUserInteractionEnabled = true
        programmaticImageView.isHighlighted = false
        
        //This setting hides the single image.
        programmaticImageView.animationImages = [eiffelImage1, eiffelImage2]
        //setting animation duration
        programmaticImageView.animationDuration = 2
        programmaticImageView.animationRepeatCount = 5
        //starting the animation
        programmaticImageView.startAnimating()
        
        self.view.addSubview(programmaticImageView)
        
        if programmaticImageView.isAnimating {
            print("is animating")
        } else {
            printContent("Not animating.")
        }
        
    }
}

/*
 Note - ImageView is not the image it is a container to hold image or array of images.
*/
