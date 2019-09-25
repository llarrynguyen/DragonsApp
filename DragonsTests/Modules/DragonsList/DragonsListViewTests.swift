//
//  DragonsListViewTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of DragonsListViewTests
class DragonsListViewTests: QuickSpec {
  
  override func spec() {
    
    var view: DragonsListView!
    var presenter: DragonsListPresenterMock!
    
    describe("DragonsListView") {
      
      beforeEach {
        view = DragonsListView()
        presenter = DragonsListPresenterMock()
        view.presenter = presenter
      }
      
      describe("When DragonsListView execute the method viewDidLoad") {
        beforeEach {
          view.viewDidLoad()
        }
        it("should call a method fetchDragons at presenter") {
          expect(presenter.functionCalled) == true
        }
      }
      
    }
    
  }
  
}
