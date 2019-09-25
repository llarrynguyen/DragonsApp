//
//  AppRouter.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

class AppRouter {
  
  func buildMainScreen() -> UIViewController {
    
    let navigation = UINavigationController()
    let dragonsList = DragonsListRouter().build()
    
    navigation.viewControllers = [dragonsList]
    
    return navigation
    
  }
  
}
