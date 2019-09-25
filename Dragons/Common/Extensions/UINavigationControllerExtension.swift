//
//  UINavigationControllerExtension.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

extension UINavigationController {
  
  func setup() {
    navigationBar.tintColor = .backButton
    navigationBar.titleTextAttributes = [
      NSAttributedString.Key.foregroundColor: UIColor.title,
      NSAttributedString.Key.font: UIFont.fontBold20
    ]
  }  
}
