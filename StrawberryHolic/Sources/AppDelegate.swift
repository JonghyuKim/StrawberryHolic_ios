//
//  AppDelegate.swift
//  StrawberryHolic
//
//  Created by HyunWoo on 26/07/2019.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: Properties
    
    var dependency: AppDependency!
    
    
    // MARK: UI
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.dependency = self.dependency ?? CompositionRoot.resolve()
        self.dependency.configureSDKs()
        self.dependency.configureAppearance()
        self.window = self.dependency.window
        
        
        return true
    }



}

