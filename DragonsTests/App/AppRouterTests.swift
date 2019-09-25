//
//  AppRouterTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import Dragons

// MARK: Methods of AppRouterTests
class AppRouterTests: QuickSpec {
  
  override func spec() {
    
    var router: AppRouter!
    var view: UIViewController!
    
    describe("AppRouter") {
      
      beforeEach {
        router = AppRouter()
      }
      
      describe("When AppRouter execute the method buildMainScreen") {
        beforeEach {
          view = router.buildMainScreen()
        }
        it("should return a view controller") {
          expect(view).to(beAKindOf(UIViewController.self))
        }
      }
      
    }
    
  }
  
}
