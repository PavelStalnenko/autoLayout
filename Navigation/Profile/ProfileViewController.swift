//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Pavel Stalnenko on 23.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    private var newButton:UIButton = {
        let newButton = UIButton()
        newButton.setTitle("Tap me", for: .normal)
        newButton.layer.borderWidth = 1
        newButton.layer.borderColor = UIColor.black.cgColor
        newButton.layer.backgroundColor = UIColor.blue.cgColor
        return newButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        view.addSubview(newButton)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
