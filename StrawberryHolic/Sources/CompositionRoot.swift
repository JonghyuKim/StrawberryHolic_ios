//
//  CompositionRoot.swift
//  StrawberryHolic
//
//  Created by Jason on 26/07/2019.
//

import UIKit




struct AppDependency {
    
    let window: UIWindow
    let configureSDKs: () -> Void
    let configureAppearance: () -> Void
}

final class CompositionRoot {
    /// Builds a dependency graph and returns an entry view controller.
    static func resolve() -> AppDependency {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        window.makeKeyAndVisible()
        
        window.rootViewController = ViewController()
      return AppDependency(window: window, configureSDKs: self.configureSDKs, configureAppearance: self.configureAppearance)


    }
    
    
    static func configureSDKs() {
    }
    
    static func configureAppearance() {

    }
    
   
}
