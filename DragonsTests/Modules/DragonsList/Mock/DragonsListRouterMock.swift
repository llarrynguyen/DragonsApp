//
//  DragonsListRouterMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit
@testable import Dragons

// MARK: Methods of Dragons List Router Protocol
class DragonsListRouterMock: DragonsListRouterProtocol {
  
  weak var view: UIViewController?
  var functionCalled = false
  var dragonPassed: Dragon?
  
  func build() -> UIViewController {
    return UIViewController()
  }
  
}

// MARK: Methods of Dragons List Presenter To Router Protocol
extension DragonsListRouterMock: DragonsListPresenterToRouterProtocol {
  
  func goToScreenDetails(dragon: Dragon) {
    functionCalled = true
    dragonPassed = dragon
  }
  
}
