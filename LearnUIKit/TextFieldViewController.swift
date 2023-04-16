//
//  TextFieldViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 15/04/23.
//

import UIKit

class TextFieldViewController: ViewController {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    var programmaticTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        programmaticTextField = UITextField()
        programmaticTextField.frame = CGRect(x: 16, y: 255, width: 361, height: 34)
        //assigning the text initially.
        programmaticTextField.text = ""
        //programmaticTextField.font = UIFont.systemFont(ofSize: 17)
        //programmaticTextField.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        programmaticTextField.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        programmaticTextField.placeholder = "programmatic text field..."
        //text alignment
        programmaticTextField.textAlignment = .left
        //auto capitalisation
        programmaticTextField.autocapitalizationType = .none
        //auto correction
        programmaticTextField.autocorrectionType = .no
        //secure field
        programmaticTextField.isSecureTextEntry = true
        
        //border style
        programmaticTextField.borderStyle = .roundedRect
        //adjust fontsize to fit width goes up to minnimumFontSize.
        programmaticTextField.adjustsFontSizeToFitWidth = true
        programmaticTextField.minimumFontSize = 15
        
        //A Boolean value that determines whether the user can edit the attributes of the text in the text field.
        programmaticTextField.allowsEditingTextAttributes = true
        //attribtes to be applied to the entered text by user.
        programmaticTextField.typingAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 7), NSAttributedString.Key.foregroundColor: UIColor.red]
        
        //adding left view
        let searchImage = UIImage(systemName: "magnifyingglass")
        
        let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        let leftView = UIImageView(image: searchImage)
        

        programmaticTextField.leftView = leftView
        programmaticTextField.leftViewMode = .always
        
        //adding action on textField
        programmaticTextField.addTarget(self, action: #selector(updateLabel), for: .editingChanged)
        programmaticTextField.addTarget(self, action: #selector(editingEnded), for: .editingDidEnd)
        programmaticTextField.addTarget(self, action: #selector(editingEndedOnExit), for: .editingDidEndOnExit)
        
        
        self.view.addSubview(programmaticTextField)
        
        if programmaticTextField.isEditing == false {
            print("Isn't editing")
        }

        
    }
    
    @IBAction func myTextFieldChanged(_ sender: Any) {
        updateLabel()
    }
    
    
    @objc func updateLabel() {
        guard let username = usernameTextField.text, let password = programmaticTextField.text else {
            return
        }
        let labelText = "username: \(username) \npassword: \(password)"
        myLabel.text = labelText
    }
    
    @objc func editingEnded() {
        print("editing ended")
    }
    
    @objc func editingEndedOnExit() {
        print("editing ended on exit")
    }
    
    
    
    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        guard let username = usernameTextField.text, let password = programmaticTextField.text else {
            return
        }
        let labelText = "username: \(username) \npassword: \(password)"
        myLabel.text = labelText
        usernameTextField.text = ""
        programmaticTextField.text = ""
    }
    
}


//UITextField vs UITextView
/*
 In UIKit, both UITextField and UITextView are classes that allow users to enter text into your app.

 The main difference between the two is that UITextField is designed for single-line input, whereas UITextView is designed for multi-line input.

 UITextField is typically used for short inputs, such as usernames, passwords, or search queries. It has a single line of text, and can be customized with a placeholder text, a keyboard type, and other properties.

 UITextView, on the other hand, is designed for longer inputs, such as paragraphs of text or messages. It can be customized with features like scrolling, font size, and text alignment.
 */

//Fonts -
/*
 1. Using System Fonts:
 UIKit provides different font styles that can be used directly in the app without any additional setup. These fonts are called system fonts, and they include different sizes and weights. To use a system font, you can simply call the systemFont(ofSize:) method on the UIFont class and pass the desired font size as a parameter.
 Example: let font = UIFont.systemFont(ofSize: 18)
 
 2. Custom Fonts:
 If you want to use a custom font that is not provided by the system, you can add the font to your app and use it with UIFont. To use a custom font, you need to add the font file to your app's project and make sure it's included in the app target. Then you can call the UIFont(name:size:) method and pass the font name and size as parameters.
 Example: let font = UIFont(name: "CustomFont-Regular", size: 18)
 
 3. Dynamic Type:
 Dynamic Type is a feature in iOS that allows users to adjust the font size of text in the app according to their preferences. To use Dynamic Type, you need to set the font using the preferredFont(forTextStyle:) method on UIFont and pass the appropriate text style as a parameter.
 Example: let font = UIFont.preferredFont(forTextStyle: .headline)

 The available text styles are:

 .largeTitle
 .title1, .title2, .title3
 .headline, .subheadline
 .body, .callout
 .footnote
 .caption1, .caption2
 These different UIFont options allow developers to customize the look of their app's text in various ways, providing a better user experience.
 */

//Controls in UITextField
/*
 In UIKit, UITextField is a subclass of UIControl, which means that you can respond to different user actions on the text field by adding target-action pairs to the appropriate events. Here are some of the common actions that you can respond to:

 1. editingDidBegin: This event occurs when the user starts editing the text field. You can add a target-action pair for this event using the .editingDidBegin constant of the UIControl.Event enum.

 2. editingChanged: This event occurs when the text in the text field changes. You can add a target-action pair for this event using the .editingChanged constant of the UIControl.Event enum.

3. editingDidEnd: This event occurs when the user finishes editing the text field. You can add a target-action pair for this event using the .editingDidEnd constant of the UIControl.Event enum. Happens either the user taps outside the textfield or presses done or return button keypad.

 editingDidEndOnExit: This event occurs when the user finishes editing the text field by pressing the return key on the keyboard. You can add a target-action pair for this event using the .editingDidEndOnExit constant of the UIControl.Event enum. Happens when the user presses the Done or return key on keypad.

 allTouchEvents: This event occurs when any touch event occurs on the text field. You can add a target-action pair for this event using the .allTouchEvents constant of the UIControl.Event enum.

 allEditingEvents: This event occurs for all editing-related events on the text field. You can add a target-action pair for this event using the .allEditingEvents constant of the UIControl.Event enum.
 */
