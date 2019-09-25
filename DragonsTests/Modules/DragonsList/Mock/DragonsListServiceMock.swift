//
//  DragonsListServiceMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

@testable import Dragons

// MARK: Methods of Dragons List Service Protocol
class DragonsListServiceMock: DragonsListServiceProtocol {
  
  weak var presenter: DragonsListServiceToPresenterProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApiProtocol?
  var functionCalled = false
  
}

// MARK: Methods of Dragons List Presenter To Service Protocol
extension DragonsListServiceMock: DragonsListPresenterToServiceProtocol {
  
  func fetchDragons() {
    functionCalled = true
  }
  
}
