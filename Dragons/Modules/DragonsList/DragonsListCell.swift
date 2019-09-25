//
//  DragonsListCell.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit

// MARK: Methods of Dragons List Cell
class DragonsListCell: UITableViewCell {
  
  let nameLabel = UILabel()
  let arrowImage = UIImageView()
  let separator = UIView()
  
  static let height = CGFloat(50)
  static let identifier = "DragonsListCell"
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    selectionStyle = .none
    contentView.backgroundColor = .background
    addElementsInScreen()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setup(dragon: Dragon) {
    nameLabel.text = dragon.name
  }
  
  func addElementsInScreen() {
    addNameLabel()
    addArrowImage()
    addSeparator()
  }
  
  func addNameLabel() {
    contentView.addSubview(nameLabel)
    nameLabel.font = .fontBold20
    nameLabel.textColor = .title
    nameLabel.numberOfLines = 0
    nameLabel.addConstraint(attribute: .top, alignElement: contentView, alignElementAttribute: .top, constant: 15)
    nameLabel.addConstraint(attribute: .left, alignElement: contentView, alignElementAttribute: .left, constant: 20)
  }
  
  func addArrowImage() {
    contentView.addSubview(arrowImage)
    arrowImage.image = UIImage(named: "arrow_right")?.withRenderingMode(.alwaysTemplate)
    arrowImage.tintColor = .title
    arrowImage.addConstraint(attribute: .right, alignElement: contentView, alignElementAttribute: .right, constant: 20)
    arrowImage.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 12)
    arrowImage.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 8)
    arrowImage.addConstraint(attribute: .centerY, alignElement: nameLabel, alignElementAttribute: .centerY, constant: 0)
  }
  
  func addSeparator() {
    contentView.addSubview(separator)
    separator.backgroundColor = .lineSeparator
    separator.addConstraint(attribute: .top, alignElement: nameLabel, alignElementAttribute: .bottom, constant: 15)
    separator.addConstraint(attribute: .left, alignElement: contentView, alignElementAttribute: .left, constant: 10)
    separator.addConstraint(attribute: .right, alignElement: contentView, alignElementAttribute: .right, constant: 10)
    separator.addConstraint(attribute: .bottom, alignElement: contentView, alignElementAttribute: .bottom, constant: 0)
    separator.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 1)
  }
  
}
