//
//  NetworkProtocol.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Alamofire

protocol NetworkProtocol {
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping(_ error: String) -> Void)
}
