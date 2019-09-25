//
//  DragonsDetailProtocols.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

// MARK: Methods of View To Presenter
protocol DragonsDetailViewToPresenterProtocol: class {
  func showAlert(greeting: String)
}

// MARK: Methods of Dragons Detail Presenter Protocol
protocol DragonsDetailPresenterProtocol: class {
  var router: DragonsDetailPresenterToRouterProtocol? { get set }
}

// MARK: Methods of Presenter to Router
protocol DragonsDetailPresenterToRouterProtocol: class {
  func showAlert(greeting: String)
}

// MARK: Methods of Dragons Detail Router Protocol
protocol DragonsDetailRouterProtocol: class {
  var view: UIViewController? { get set }
  func build(dragon: Dragon) -> UIViewController
}
