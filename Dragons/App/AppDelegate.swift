//
//  AppDelegate.swift
//  Dragons
//
//  Created by Larry Nguyen on 14/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    mainScreen()
    return true
  }
  
  private func mainScreen() {
    let appRouter = AppRouter()
    let mainScreen = appRouter.buildMainScreen()
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = mainScreen
    window?.makeKeyAndVisible()
  }
  
}
