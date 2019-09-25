//
//  DragonsListServiceTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of DragonsListServiceTests
class DragonsListServiceTests: QuickSpec {
  
  override func spec() {
    
    var service: DragonsListService!
    var presenter: DragonsListPresenterMock!
    var ulrsApi: UrlsApiProtocol!
    
    describe("DragonsListService") {
      
      beforeEach {
        service = DragonsListService()
        presenter = DragonsListPresenterMock()
        ulrsApi = UrlsApi()
        service.presenter = presenter
        service.urlsApi = ulrsApi
      }
      
      describe("When DragonsListService execute the method fetchDragons") {
        
        context("and request is success") {
          beforeEach {
            service.network = DragonsListNetworkSuccessMock()
            service.fetchDragons()
          }
          it("should call a method fetchedDragons at presenter") {
            expect(presenter.functionCalled) == true
            expect(presenter.dragonsApiPassard).notTo(beNil())
          }
        }
        
        context("and request is fail") {
          beforeEach {
            service.network = DragonsListNetworkFailMock()
            service.fetchDragons()
          }
          it("should call a method fetchedFail at presenter") {
            expect(presenter.functionCalled) == true
          }
        }
        
      }
      
    }
    
  }
  
}
