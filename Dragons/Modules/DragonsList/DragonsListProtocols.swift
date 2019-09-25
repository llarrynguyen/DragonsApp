//
//  DragonsListProtocols.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

// MARK: Methods of View To Presenter
protocol DragonsListViewToPresenterProtocol: class {
  func fetchDragons()
  func goToScreenDetails(dragon: Dragon)
}

// MARK: Methods of Dragons List Presenter Protocol
protocol DragonsListPresenterProtocol: class {
  var view: DragonsListPresenterToViewProtocol? { get set }
  var router: DragonsListPresenterToRouterProtocol? { get set }
  var service: DragonsListPresenterToServiceProtocol? { get set }
}

// MARK: Methods of Presenter to Router
protocol DragonsListPresenterToRouterProtocol: class {
  func goToScreenDetails(dragon: Dragon)
}

// MARK: Methods of Presenter to Service
protocol DragonsListPresenterToServiceProtocol: class {
  func fetchDragons()
}

// MARK: Methods of Presenter to View
protocol DragonsListPresenterToViewProtocol: class {
  var presenter: DragonsListViewToPresenterProtocol? { get set }
  func showDragons(dragonsList: [Dragon])
  func showError()
}

// MARK: Methods of Dragons List Service Protocol
protocol DragonsListServiceProtocol: class {
  var network: NetworkProtocol? { get set }
  var urlsApi: UrlsApiProtocol? { get set }
  var presenter: DragonsListServiceToPresenterProtocol? { get set }
}

// MARK: Methods of Service to Presenter
protocol DragonsListServiceToPresenterProtocol: class {
  func fetchedDragons(dragonsApi: DragonsResponseApi)
  func fetchedFail()
}

// MARK: Methods of Dragons List Router Protocol
protocol DragonsListRouterProtocol: class {
  var view: UIViewController? { get set }
  func build() -> UIViewController
}
