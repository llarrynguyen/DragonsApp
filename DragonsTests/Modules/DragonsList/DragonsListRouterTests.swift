//
//  DragonsListRouterTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import Dragons

// MARK: Methods of DragonsListRouterTests
class DragonsListRouterTests: QuickSpec {
  
  override func spec() {
    
    var router: DragonsListRouter!
    var view: UIViewController!
    
    describe("DragonsListRouter") {
      
      beforeEach {
        router = DragonsListRouter()
      }
      
      describe("When DragonsListRouter execute the method build") {
        beforeEach {
          view = router.build()
        }
        it("should return a view controller") {
          expect(view).to(beAKindOf(UIViewController.self))
        }
      }
      
    }
    
  }
  
}
