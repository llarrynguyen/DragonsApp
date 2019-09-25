//
//  DragonsDetailRouter.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

// MARK: Methods of Dragons Detail Router Protocol
class DragonsDetailRouter: DragonsDetailRouterProtocol {
  
  weak var view: UIViewController?
  
  func build(dragon: Dragon) -> UIViewController {
    
    let view = DragonsDetailView()
    let presenter = DragonsDetailPresenter()
    let router = DragonsDetailRouter()
    
    view.dragon = dragon
    view.presenter = presenter
    presenter.router = router
    router.view = view
    
    return view
    
  }
  
}

// MARK: Methods of Dragons Detail Presenter To Router Protocol
extension DragonsDetailRouter: DragonsDetailPresenterToRouterProtocol {
  
  func showAlert(greeting: String) {
    let alertView = UIAlertController(title: "Greeting", message: greeting, preferredStyle: .alert)
    alertView.addAction(UIAlertAction(title: "OK", style: .default))
    view?.present(alertView, animated: true, completion: nil)
  }
  
}
