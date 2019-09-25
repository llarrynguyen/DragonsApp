//
//  DragonsDetailPresenterMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

@testable import Dragons

// MARK: Methods of Dragons Detail Presenter Protocol
class DragonsDetailPresenterMock: DragonsDetailPresenterProtocol {
  
  var router: DragonsDetailPresenterToRouterProtocol?
  var functionCalled = false
  var greetingPassard: String?
  
}

// MARK: Methods of Dragons Detail View To Presenter Protocol
extension DragonsDetailPresenterMock: DragonsDetailViewToPresenterProtocol {
  
  func showAlert(greeting: String) {
    functionCalled = true
    greetingPassard = greeting
  }
  
}
