//
//  DragonsListNetworkMock.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Alamofire
@testable import Dragons

class DragonsListNetworkSuccessMock: NetworkProtocol {
  
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping (String) -> Void) {
    do {
      let path = Bundle.main.path(forResource: "DragonsListRequestMock", ofType: "json")!
      let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
      success(data)
    } catch {
      failure("Message Error")
    }
  }
  
}

class DragonsListNetworkFailMock: NetworkProtocol {
  
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping (String) -> Void) {
    failure("Message Error")
  }
  
}
