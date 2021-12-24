//
//  SignUpLayout.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit


class SignUpLayout: BaseLayout {
    
    let buttonGoToMain = UIButton(type: .system)
    
    
    override func setupSubviews() {
        backgroundColor = .lightGray
        
        buttonGoToMain.translatesAutoresizingMaskIntoConstraints = false
        buttonGoToMain.setTitle("Go To Main", for: .normal)
        
        addSubview(buttonGoToMain)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            buttonGoToMain.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonGoToMain.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
