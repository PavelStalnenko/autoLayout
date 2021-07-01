//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Pavel Stalnenko on 23.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    @IBOutlet weak var imageAvatarView: UIImageView!{
        didSet{
            imageAvatarView.layer.cornerRadius = imageAvatarView.bounds.height/2
            imageAvatarView.clipsToBounds = true
            imageAvatarView.layer.borderWidth = 3
            imageAvatarView.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBOutlet weak var fullNameLabel: UILabel! {
                didSet{
                    fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
                    fullNameLabel.text = "Pavel Stalnenko"
                    fullNameLabel.textColor = .black
                }
    }

    @IBOutlet weak var statusLabel: UILabel! {
        didSet{
            statusLabel.text = "Waiting for something"
            statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            statusLabel.textColor = .gray
        }
    }
    @IBOutlet weak var statusTextField: UITextField! {
        didSet{
            statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            statusTextField.textColor = .black
            statusTextField.layer.backgroundColor = UIColor.white.cgColor
            statusTextField.layer.cornerRadius = 12
            statusTextField.layer.borderWidth = 1
            statusTextField.layer.borderColor = UIColor.black.cgColor
        }
    }
    @IBOutlet weak var setStatusButton: UIButton! {
        didSet {
            setStatusButton.layer.cornerRadius = 14
            setStatusButton.layer.shadowOffset.width = 4
            setStatusButton.layer.shadowOffset.height = 4
            setStatusButton.layer.shadowRadius = 4
            setStatusButton.layer.shadowColor = UIColor.black.cgColor
            setStatusButton.layer.shadowOpacity = 0.7
        }
    }
}
