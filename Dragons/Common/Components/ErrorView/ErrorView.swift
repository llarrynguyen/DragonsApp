//
//  ErrorView.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

protocol ErrorViewProtocol: class {
  func didPressRetry()
}

class ErrorView: UIView {
  
  let iconImage = UIImageView()
  let titleLabel = UILabel()
  let textLabel = UILabel()
  let buttonRetry = UIButton()
  
  weak var errorViewDelegate: ErrorViewProtocol?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addElementsInView()
    setupView()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    addElementsInView()
    setupView()
  }
  
  func setup(title: String, text: String, delegate: ErrorViewProtocol) {
    titleLabel.text = title
    textLabel.text = text
    errorViewDelegate = delegate
  }
  
  func setupView() {
    backgroundColor = .background
  }
  
  func addElementsInView() {
    addIconImage()
    addTitleLabel()
    addTitleTextLabel()
    addButtonRetry()
  }
  
  func addIconImage() {
    addSubview(iconImage)
    iconImage.image = UIImage(named: "icon_warning")?.withRenderingMode(.alwaysTemplate)
    iconImage.tintColor = .black
    iconImage.addConstraint(attribute: .top, alignElement: self, alignElementAttribute: .top, constant: 0)
    iconImage.addConstraint(attribute: .centerX, alignElement: self, alignElementAttribute: .centerX, constant: 0)
    iconImage.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 50)
    iconImage.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 50)
  }
  
  func addTitleLabel() {
    addSubview(titleLabel)
    titleLabel.font = .fontBold15
    titleLabel.textColor = .title
    titleLabel.numberOfLines = 0
    titleLabel.textAlignment = .center
    titleLabel.addConstraint(attribute: .top, alignElement: iconImage, alignElementAttribute: .bottom, constant: 5)
    titleLabel.addConstraint(attribute: .right, alignElement: self, alignElementAttribute: .right, constant: 0)
    titleLabel.addConstraint(attribute: .left, alignElement: self, alignElementAttribute: .left, constant: 0)
  }
  
  func addTitleTextLabel() {
    addSubview(textLabel)
    textLabel.font = .fontRegular14
    textLabel.textColor = .text
    textLabel.numberOfLines = 0
    textLabel.textAlignment = .center
    textLabel.addConstraint(attribute: .top, alignElement: titleLabel, alignElementAttribute: .bottom, constant: 5)
    textLabel.addConstraint(attribute: .right, alignElement: self, alignElementAttribute: .right, constant: 0)
    textLabel.addConstraint(attribute: .left, alignElement: self, alignElementAttribute: .left, constant: 0)
  }
  
  func addButtonRetry() {
    addSubview(buttonRetry)
    buttonRetry.setTitle("Retry", for: .normal)
    buttonRetry.setTitleColor(.white, for: .normal)
    buttonRetry.backgroundColor = .button
    buttonRetry.layer.cornerRadius = 10
    buttonRetry.titleLabel?.font = .fontBold15
    buttonRetry.addConstraint(attribute: .top, alignElement: textLabel, alignElementAttribute: .bottom, constant: 15)
    buttonRetry.addConstraint(attribute: .centerX, alignElement: self, alignElementAttribute: .centerX, constant: 0)
    buttonRetry.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 50)
    buttonRetry.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 150)
    buttonRetry.addConstraint(attribute: .bottom, alignElement: self, alignElementAttribute: .bottom, constant: 0)
    buttonRetry.addTarget(self, action: #selector(didPressRetry(button:)), for: .touchUpInside)
  }
  
  @objc func didPressRetry(button: UIButton) {
    errorViewDelegate?.didPressRetry()
  }
  
}
