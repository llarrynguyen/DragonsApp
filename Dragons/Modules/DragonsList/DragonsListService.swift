//
//  DragonsListService.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Foundation

// MARK: Methods of Dragons List Service Protocol
class DragonsListService: DragonsListServiceProtocol {
  
  weak var presenter: DragonsListServiceToPresenterProtocol?
  var network: NetworkProtocol?
  var urlsApi: UrlsApiProtocol?

}

// MARK: Methods of Dragons List Presenter To Service Protocol
extension DragonsListService: DragonsListPresenterToServiceProtocol {
  
  func fetchDragons() {
    
    guard let url = urlsApi?.listDragons() else {
      presenter?.fetchedFail()
      return
    }
    
    network?.request(url: url, method: .get, parameters: nil, success: { [weak self] (response) in
      do {
        let dragons = try JSONDecoder().decode(DragonsResponseApi.self, from: response)
        self?.presenter?.fetchedDragons(dragonsApi: dragons)
      } catch {
        self?.presenter?.fetchedFail()
      }
    }, failure: { [weak self] _ in
        self?.presenter?.fetchedFail()
    })
    
  }
  
}
