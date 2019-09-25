//
//  StringExtensionTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of UIColorExtensionTests
class StringExtensionTests: QuickSpec {
  
  override func spec() {
    
    describe("StringExtension") {
      
      describe("When StringExtension execute the method contertToColor") {
        it("should return a UIColor") {
          let color = "#2863EC".contertToColor
          expect(color).to(beAKindOf(UIColor.self))
        }
      }
      
    }
    
  }
  
}
