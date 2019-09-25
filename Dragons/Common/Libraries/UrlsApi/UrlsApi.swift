//
//  UrlsApi.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Foundation

class UrlsApi: UrlsApiProtocol {
  
  private let baseUlr = "http://www.mocky.io/v2/"
  
  func listDragons() -> URL? {
    return URL(string: (baseUlr + "5cd9a1a6300000b921c01752"))
  }
  
}
