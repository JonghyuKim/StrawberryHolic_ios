//
//  main.swift
//  StrawberryHolic
//
//  Created by Jason on 26/07/2019.
//

import UIKit
private func appDelegateClassName() -> String {
    let isTesting = NSClassFromString("XCTestCase") != nil
    return isTesting ? "StrawberryHolicTests.StubAppDelegate" : NSStringFromClass(AppDelegate.self)
}

_ = UIApplicationMain(CommandLine.argc,
                      CommandLine.unsafeArgv,
                      NSStringFromClass(UIApplication.self),
                      appDelegateClassName())

