//
//  BottomNavigationStackView.swift
//  Tinder
//
//  Created by Jason Ngo on 2018-12-19.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class BottomNavigationStackView: UIStackView {
  
  // MARK: - Views
  
  let refreshButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "refresh_circle").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let nopeButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "dismiss_circle").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let superLikeButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "super_like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let likeButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let boostButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "boost_circle").withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  // MARK: - Initializers
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupStackViewLayout()
  }
  
  required init(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupStackViewLayout() {
    distribution = .fillEqually
    heightAnchor.constraint(equalToConstant: 120).isActive = true
    
    let arrangedSubviews = [
      refreshButton, nopeButton, superLikeButton, likeButton, boostButton
    ]
    
    arrangedSubviews.forEach { addArrangedSubview($0) }
  }
  
}

