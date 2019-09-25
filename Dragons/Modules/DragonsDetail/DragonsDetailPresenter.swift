//
//  DragonsDetailPresenter.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Foundation

// MARK: Methods of Dragons Detail Presenter Protocol
class DragonsDetailPresenter: DragonsDetailPresenterProtocol {
  
  var router: DragonsDetailPresenterToRouterProtocol?
  
}

// MARK: Methods of Dragons Detail View To Presenter Protocol
extension DragonsDetailPresenter: DragonsDetailViewToPresenterProtocol {
  
  func showAlert(greeting: String) {
    router?.showAlert(greeting: greeting)
  }
  
}
