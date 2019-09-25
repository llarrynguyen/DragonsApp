//
//  UIFontExtensionTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of UIFontExtensionTests
class UIFontExtensionTests: QuickSpec {
  
  override func spec() {
    
    describe("UIFonts") {
      
      describe("When get the font fontBold20") {
        it("should return a font Nunito-Bold with size 20") {
          expect(UIFont.fontBold20) == UIFont(name: "Nunito-Bold", size: 20)!
        }
      }
      
      describe("When get the font fontBold15") {
        it("should return a font Nunito-Bold with size 15") {
          expect(UIFont.fontBold15) == UIFont(name: "Nunito-Bold", size: 15)!
        }
      }
      
      describe("When get the font fontRegular14") {
        it("should return a font Nunito-Regular with size 14") {
          expect(UIFont.fontRegular14) == UIFont(name: "Nunito-Regular", size: 14)!
        }
      }
      
    }
    
  }
  
}
