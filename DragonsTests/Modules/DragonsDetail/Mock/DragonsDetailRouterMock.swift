//
//  DragonsDetailRouterMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit
@testable import Dragons

// MARK: Methods of Dragons Detail Router Protocol
class DragonsDetailRouterMock: DragonsDetailRouterProtocol {
  
  weak var view: UIViewController?
  var functionCalled = false
  var greetingPassard: String?
  
  func build(dragon: Dragon) -> UIViewController {
    return UIViewController()
  }
  
}

// MARK: Methods of Dragons Detail Presenter To Router Protocol
extension DragonsDetailRouterMock: DragonsDetailPresenterToRouterProtocol {
  
  func showAlert(greeting: String) {
    functionCalled = true
    greetingPassard = greeting
  }
  
}
