//
//  DragonsListPresenter.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Foundation

// MARK: Methods of Dragons List Presenter Protocol
class DragonsListPresenter: DragonsListPresenterProtocol {
  
  weak var view: DragonsListPresenterToViewProtocol?
  var router: DragonsListPresenterToRouterProtocol?
  var service: DragonsListPresenterToServiceProtocol?
  
}

// MARK: Methods of Dragons List View To Presenter Protocol
extension DragonsListPresenter: DragonsListViewToPresenterProtocol {
  
  func fetchDragons() {
    service?.fetchDragons()
  }
  
  func goToScreenDetails(dragon: Dragon) {
    router?.goToScreenDetails(dragon: dragon)
  }
  
}

// MARK: Methods of Dragons List Service To Presenter Protocol
extension DragonsListPresenter: DragonsListServiceToPresenterProtocol {
  
  func fetchedDragons(dragonsApi: DragonsResponseApi) {
    
    let dragons = dragonsApi.dragons.filter { $0 != nil }.map { (dragon) -> Dragon in
      
      let greetingType = dragon?.greeting_type ?? "gr"
      var greeting = ""
      
      switch greetingType {
      case "whoa":
        greeting = "Whoaaaaaaa!"
      case "groar":
        greeting = "Groarrrrrrr!"
      case "roar":
        greeting = "Roarrrrrrrr!"
      default:
        greeting = "Grrrrrrrrrrr!"
      }
      
      return Dragon(
        name: dragon?.title ?? "No name",
        description: dragon?.description ?? "No description",
        age: String(dragon?.age ?? 0) + " years old",
        image: URL(string: dragon?.image ?? ""),
        greeting: greeting
      )
      
    }
    
    view?.showDragons(dragonsList: dragons)
    
  }
  
  func fetchedFail() {
    view?.showError()
  }
  
}
