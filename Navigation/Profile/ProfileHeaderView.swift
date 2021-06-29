//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Pavel Stalnenko on 23.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    var imageAvatar:UIImageView{
        let image:UIImage = UIImage(named: "avatar")!
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 16, y: 100, width: 150, height: 150)
        imageView.layer.cornerRadius = imageView.bounds.height/2
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        
        return imageView
    }
    var name:UILabel{
        let name = UILabel(frame: CGRect(x: 190, y: 100, width: 150, height: 100))
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        name.text = "Pavel Stalnenko"
        name.textColor = .black
        return name
    }
    
    var status:UILabel {
        let status = UILabel(frame: CGRect(x: 190, y: 150, width: 150, height: 100))
        status.text = "Waiting for something"
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }
    
    var button:UIButton{
        let button = UIButton(frame: CGRect(x: 16, y: 280, width:344, height: 50))
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.layer.cornerRadius = 14
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageAvatar)
        addSubview(name)
        addSubview(status)
        addSubview(button)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func buttonPressed(){
        print(status.text!)
    }
}
