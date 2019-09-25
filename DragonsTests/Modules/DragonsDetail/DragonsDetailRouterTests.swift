//
//  DragonsDetailRouterTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import Dragons

// MARK: Methods of DragonsDetailRouterTests
class DragonsDetailRouterTests: QuickSpec {
  
  override func spec() {
    
    var router: DragonsDetailRouter!
    var view: UIViewController!
    
    describe("DragonsDetailRouter") {
      
      beforeEach {
        router = DragonsDetailRouter()
      }
      
      describe("When DragonsDetailRouter execute the method build") {
        beforeEach {
          let dragon = Dragon(
            name: "Name Dragon",
            description: "Description Dragon",
            age: "20 years old",
            image: URL(string: "http://google.com.br"),
            greeting: "Greeting"
          )
          view = router.build(dragon: dragon)
        }
        it("should return a view controller") {
          expect(view).to(beAKindOf(UIViewController.self))
        }
      }
      
    }
    
  }
  
}
