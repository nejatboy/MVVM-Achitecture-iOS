//
//  SplashLayout.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit

class SplashLayout: BaseLayout {
    
    let buttonGoToLogin = UIButton(type: .system)
    
    
    override func setupSubviews() {
        backgroundColor = .systemRed
        
        buttonGoToLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonGoToLogin.setTitle("Click", for: .normal)
        
        addSubview(buttonGoToLogin)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            buttonGoToLogin.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonGoToLogin.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
