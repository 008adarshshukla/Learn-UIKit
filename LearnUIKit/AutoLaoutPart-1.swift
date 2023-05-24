//
//  AutoLaoutPart-1.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 20/04/23.
//

import UIKit

class AutoLayout1: UIViewController {
    
    //creating image view.
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Page1"))
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //creating the textView
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    //previousButton
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        button.backgroundColor = .cyan
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.addSubview(descriptionTextView)
        
        //setting up the layout for the imageView.
        setupImageViewLayout()
        
        //setting up bottom controls
        setUpBottomControls()
        
    }
    
    //layout for the imageView and descriptionTextView
    //What we want is that the image view must appear on the top half of the upper view.
    private func setupImageViewLayout() {
        
        let upperView = UIView()
        view.addSubview(upperView)
        upperView.translatesAutoresizingMaskIntoConstraints = false
        upperView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        upperView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        upperView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        upperView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        upperView.addSubview(imageView)
        
        //anchoring the horizontal center of the imageView to horizontal center of parent view.
        imageView.centerXAnchor.constraint(equalTo:upperView.centerXAnchor).isActive = true
        //anchoring the vertical center of the imageView to vartical center of parent view.
        imageView.centerYAnchor.constraint(equalTo:upperView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 0.6).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: upperView.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    func setUpBottomControls() {
        view.addSubview(previousButton)
        
        previousButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        previousButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        //previousButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        //previousButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
    }
    
}

/*
 To apply the written constraint set the property "translatesAutoresizingMaskIntoConstraints" for the view to which constraint is to be applied to false.
 Also we need to activate each contraint by setting the property ".isActive" to true for each constraint.
 */
