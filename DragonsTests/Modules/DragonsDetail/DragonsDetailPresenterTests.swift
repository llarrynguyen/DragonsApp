//
//  DragonsDetailPresenterTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of DragonsDetailPresenterTests
class DragonsDetailPresenterTests: QuickSpec {
  
  override func spec() {
    
    var presenter: DragonsDetailPresenter!
    var router: DragonsDetailRouterMock!
    
    describe("DragonsDetailPresenter") {
      
      beforeEach {
        presenter = DragonsDetailPresenter()
        router = DragonsDetailRouterMock()
        presenter.router = router
      }
      
      describe("When DragonsDetailPresenter execute the method showAlert") {
        beforeEach {
          presenter.showAlert(greeting: "Greeting text")
        }
        it("should call a method showAlert at router") {
          expect(router.functionCalled) == true
          expect(router.greetingPassard).notTo(beNil())
        }
      }
      
    }
    
  }
  
}
