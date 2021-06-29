//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Pavel Stalnenko on 23.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profileHeader = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.view.addSubview(profileHeader)

        
    }
    
    override func viewWillLayoutSubviews(){
        profileHeader.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        
//        view.backgroundColor = .green
    }
}
