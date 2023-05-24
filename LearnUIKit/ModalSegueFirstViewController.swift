//
//  ModalSegueFirstViewController.swift
//  LearnUIKit
//
//  Created by Adarsh Shukla on 22/05/23.
//

import UIKit

class ModalSegueFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: This function is called when this view controller performs any segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoSecond" {
            print("gotoSecond Initiated")
        }
    }
    
    
    @IBAction func gotoSecondProgrammaticallyTapped(_ sender: Any) {
        //MARK: Accessing the secondViewController.
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModalSegueSecondViewController")
        //MARK: Presenting the view controller
        self.present(secondViewController, animated: true)
    }
    
}
//MARK: Notes
/*
 For each View Controller we get a function called prepare(for segue...) which can track all the segues that this view controller perform using the segue identifier
 */

//MARK: AppDelegate vs SceneDelegate
/*
 Summary - The AppDelegate will be responsible for the application lifecycle and setup. The SceneDelegate will be responsible for what is shown on the screen (Windows or Scenes) handle and manage the way your app is shown.
 
 The main reason for Apple to add UISceneDelegate to iOS 13 was to create a good entry point for multi-windowed applications
 
 AppDelegate is responsible for handling application-level events, like app launch and the SceneDelegate is responsible for scene lifecycle events like scene creation, destruction and state restoration of a UISceneSession.
 
 */

//MARK: AppDelegate
/*
 func application(_:didFinishLaunchingWithOptions:) -> Bool
 This method is called when the application is launched and where the application set-up is done. Earlier iOS 13, we might have used this method to configure the UIWindow object and assign a ViewController instance to the UIWindow object to make it display on the screen. From iOS 13, if your application has scenes, then AppDelegate is no longer responsible for handling this and is moved to SceneDelegate.
 
 func application(_:configurationForConnecting:options:) -> UISceneConfiguration
 This method is called when ever the application needs a new scene or window to display. This method is not called on app launch but only when a new scene or a new window is need to be obtained.
 
 func application(_:didDiscardSceneSessions:)
 This method is called when ever user discards a scene like by swiping it from the multitasking window or if discarded programatically. This method is called for every discarded scene shortly after the (_:didFinishLaunchingwithOptions:) method is called if the app isn’t running when user discards the scene.
 */

//MARK: SceneDelegate
/*
 scene(_:willConnectTo:options:)
 This is the first method called in UISceneSession life cycle. This method will creates new UIWindow, sets the root view controller and makes this window the key window to be displayed.
 
 sceneWillEnterForeground(_:)
 This method is called when the scene is about to start like when app becomes active for the first time or when transitions from background to foreground.
 
 sceneDidBecomeActive(_:)
 This method is called right after the WillEnterForeground method and here the scene is set-up and visible and ready to use.
 
 sceneWillResignActive(_:) and sceneDidEnterBackground(_:)
 These methods are called when app stages to backgground .
 
 sceneDidDisconnect(_:)
 This is the interesting method of all the methods. When ever the scene is sent to background, iOS might decide to completely discard the scene to free up the resources. This doesn’t meant that the app is killed or not running, but just the scene is disconnected from the session and is not active. iOS can decide to reconnect back this scene to scene session when the user brings that particular scene to foreground again . This method can be used to discard any resources that aren’t used anymore.
 */

