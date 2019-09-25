//
//  UIColorExtensionTests.swift
//  DragonsTests
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of UIColorExtensionTests
class UIColorExtensionTests: QuickSpec {
  
  override func spec() {
    
    describe("UIColorsExtension") {
      
      describe("When get the color backButton") {
        it("should return a color #2863EC") {
          expect(UIColor.backButton) == "#2863EC".contertToColor
        }
      }
      
      describe("When get the color background") {
        it("should return a color #F5F6F8") {
          expect(UIColor.background) == "#F5F6F8".contertToColor
        }
      }
      
      describe("When get the color button") {
        it("should return a color #2863EC") {
          expect(UIColor.button) == "#2863EC".contertToColor
        }
      }
      
      describe("When get the color lineSeparator") {
        it("should return a color #C0C0C5") {
          expect(UIColor.lineSeparator) == "#C0C0C5".contertToColor
        }
      }
      
      describe("When get the color text") {
        it("should return a color #5C5C5C") {
          expect(UIColor.text) == "#5C5C5C".contertToColor
        }
      }
      
      describe("When get the color title") {
        it("should return a color #2C2D2F") {
          expect(UIColor.title) == "#2C2D2F".contertToColor
        }
      }
      
    }
    
  }
  
}
