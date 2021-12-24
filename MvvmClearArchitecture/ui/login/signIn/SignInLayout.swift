//
//  SignInLayout.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit



class SignInLayout: BaseLayout {
    
    let buttonGoToSignUp = UIButton(type: .system)
    
    
    override func setupSubviews() {
        backgroundColor = .yellow
        
        buttonGoToSignUp.translatesAutoresizingMaskIntoConstraints = false
        buttonGoToSignUp.setTitle("Go To Sign Up", for: .normal)
        
        addSubview(buttonGoToSignUp)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            buttonGoToSignUp.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonGoToSignUp.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
