//
//  DragonsDetailView.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

import UIKit
import Kingfisher

// MARK: Methods of Dragons Detail View
class DragonsDetailView: UIViewController {
  
  let scrollView = UIScrollView()
  let imagePoster = UIImageView()
  let nameLabel = UILabel()
  let ageLabel = UILabel()
  let descriptionLabel = UILabel()
  let buttonGreeting = UIButton()
  
  var dragon: Dragon!
  var presenter: DragonsDetailViewToPresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
  }
  
  func setupView() {
    view.backgroundColor = .background
    title = "Dragons Detail"
  }
  
  func addElementsInScreen() {
    addScrollView()
    addImagePoster()
    addNameLabel()
    addAgeLabel()
    addDescriptionLabel()
    addButtonGreeting()
  }
  
  func addScrollView() {
    view.addSubview(scrollView)
    scrollView.addConstraint(attribute: .top, alignElement: view.safeAreaLayoutGuide, alignElementAttribute: .top, constant: 0)
    scrollView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    scrollView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    scrollView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
  func addImagePoster() {
    scrollView.addSubview(imagePoster)
    imagePoster.contentMode = .scaleAspectFill
    imagePoster.clipsToBounds = true
    imagePoster.kf.setImage(with: dragon.image, placeholder: UIImage().placeholder())
    imagePoster.addConstraint(attribute: .top, alignElement: scrollView, alignElementAttribute: .top, constant: 0)
    imagePoster.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 0)
    imagePoster.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 0)
    imagePoster.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 250)
    imagePoster.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addNameLabel() {
    scrollView.addSubview(nameLabel)
    nameLabel.numberOfLines = 0
    nameLabel.font = .fontBold20
    nameLabel.textColor = .title
    nameLabel.text = dragon.name
    nameLabel.addConstraint(attribute: .top, alignElement: imagePoster, alignElementAttribute: .bottom, constant: 15)
    nameLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 15)
    nameLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 15)
    nameLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addAgeLabel() {
    scrollView.addSubview(ageLabel)
    ageLabel.font = .fontRegular14
    ageLabel.textColor = .text
    ageLabel.text = dragon.age
    ageLabel.addConstraint(attribute: .top, alignElement: nameLabel, alignElementAttribute: .bottom, constant: 5)
    ageLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 15)
    ageLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 15)
    ageLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addDescriptionLabel() {
    scrollView.addSubview(descriptionLabel)
    descriptionLabel.numberOfLines = 0
    descriptionLabel.font = .fontRegular14
    descriptionLabel.textColor = .text
    descriptionLabel.text = dragon.description
    descriptionLabel.addConstraint(attribute: .top, alignElement: ageLabel, alignElementAttribute: .bottom, constant: 15)
    descriptionLabel.addConstraint(attribute: .right, alignElement: scrollView, alignElementAttribute: .right, constant: 15)
    descriptionLabel.addConstraint(attribute: .left, alignElement: scrollView, alignElementAttribute: .left, constant: 15)
    descriptionLabel.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
  }
  
  func addButtonGreeting() {
    scrollView.addSubview(buttonGreeting)
    buttonGreeting.setTitle("Make Greeting", for: .normal)
    buttonGreeting.setTitleColor(.white, for: .normal)
    buttonGreeting.backgroundColor = .button
    buttonGreeting.layer.cornerRadius = 10
    buttonGreeting.titleLabel?.font = .fontBold15
    buttonGreeting.addTarget(self, action: #selector(didPressButtonGreeting), for: .touchUpInside)
    buttonGreeting.addConstraint(attribute: .top, alignElement: descriptionLabel, alignElementAttribute: .bottom, constant: 30)
    buttonGreeting.addConstraint(attribute: .bottom, alignElement: scrollView, alignElementAttribute: .bottom, constant: 30)
    buttonGreeting.addConstraint(attribute: .centerX, alignElement: scrollView, alignElementAttribute: .centerX, constant: 0)
    buttonGreeting.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 50)
    buttonGreeting.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 150)
  }
  
  @objc func didPressButtonGreeting(sender: UIButton) {
    presenter?.showAlert(greeting: dragon.greeting)
  }
  
}
