//
//  DragonsListPresenterMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

@testable import Dragons

// MARK: Methods of Dragons List Presenter Protocol
class DragonsListPresenterMock: DragonsListPresenterProtocol {
  
  weak var view: DragonsListPresenterToViewProtocol?
  var router: DragonsListPresenterToRouterProtocol?
  var service: DragonsListPresenterToServiceProtocol?
  var functionCalled = false
  var dragonPassard: Dragon?
  var dragonsApiPassard: DragonsResponseApi?
  
}

// MARK: Methods of Dragons List View To Presenter Protocol
extension DragonsListPresenterMock: DragonsListViewToPresenterProtocol {
  
  func fetchDragons() {
    functionCalled = true
  }
  
  func goToScreenDetails(dragon: Dragon) {
    functionCalled = true
    dragonPassard = dragon
  }
  
}

// MARK: Methods of Dragons List Service To Presenter Protocol
extension DragonsListPresenterMock: DragonsListServiceToPresenterProtocol {
  
  func fetchedDragons(dragonsApi: DragonsResponseApi) {
    functionCalled = true
    dragonsApiPassard = dragonsApi
  }
  
  func fetchedFail() {
    functionCalled = true
  }
  
}
