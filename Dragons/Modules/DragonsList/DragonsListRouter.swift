//
//  DragonsListRouter.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

// MARK: Methods of Dragons List Router Protocol
class DragonsListRouter: DragonsListRouterProtocol {
  
  weak var view: UIViewController?
  
  func build() -> UIViewController {
    
    let view = DragonsListView()
    let presenter = DragonsListPresenter()
    let router = DragonsListRouter()
    let service = DragonsListService()
    let network = Network()
    let urlsApi = UrlsApi()
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.service = service
    router.view = view
    service.presenter = presenter
    service.network = network
    service.urlsApi = urlsApi
    
    return view
    
  }
  
}

// MARK: Methods of Dragons List Presenter To Router Protocol
extension DragonsListRouter: DragonsListPresenterToRouterProtocol {
  
  func goToScreenDetails(dragon: Dragon) {
    let screenDetail = DragonsDetailRouter().build(dragon: dragon)
    view?.navigationController?.pushViewController(screenDetail, animated: true)
  }
  
}
