//
//  DragonsListPresenterTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of DragonsListPresenterTests
class DragonsListPresenterTests: QuickSpec {
  
  override func spec() {
    
    var presenter: DragonsListPresenter!
    var view: DragonsListViewMock!
    var router: DragonsListRouterMock!
    var service: DragonsListServiceMock!
    
    describe("DragonsListPresenter") {
      
      beforeEach {
        presenter = DragonsListPresenter()
        view = DragonsListViewMock()
        router = DragonsListRouterMock()
        service = DragonsListServiceMock()
        presenter.view = view
        presenter.router = router
        presenter.service = service
      }
      
      describe("When DragonsListPresenter execute the method fetchDragons") {
        beforeEach {
          presenter.fetchDragons()
        }
        it("should call a method fetchDragons at service") {
          expect(service.functionCalled) == true
        }
      }
      
      describe("When DragonsListPresenter execute the method goToScreenDetails") {
        beforeEach {
          let dragon = Dragon(
            name: "Name Dragon",
            description: "Description Dragon",
            age: "20 years old",
            image: URL(string: "http://google.com.br"),
            greeting: "Greeting"
          )
          presenter.goToScreenDetails(dragon: dragon)
        }
        it("should call a method goToScreenDetails at router") {
          expect(router.functionCalled) == true
          expect(router.dragonPassed).notTo(beNil())
        }
      }
      
      describe("When DragonsListPresenter execute the method fetchedDragons") {
        beforeEach {
          do {
            let path = Bundle.main.path(forResource: "DragonsListRequestMock", ofType: "json")!
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let responseApi = try JSONDecoder().decode(DragonsResponseApi.self, from: data)
            presenter.fetchedDragons(dragonsApi: responseApi)
          } catch {
            fail("Error parse DragonsListRequestMock")
          }
        }
        it("should call a method showDragons at view") {
          expect(view.functionCalled) == true
          expect(view.dragonsListPassed).notTo(beNil())
        }
      }
      
      describe("When DragonsListPresenter execute the method fetchedFail") {
        beforeEach {
          presenter.fetchedFail()
        }
        it("should call a method showError at view") {
          expect(view.functionCalled) == true
        }
      }
      
    }
    
  }
  
}
