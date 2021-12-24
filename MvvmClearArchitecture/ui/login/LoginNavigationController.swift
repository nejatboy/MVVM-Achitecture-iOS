//
//  LoginNavigationController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import Foundation
import UIKit



class LoginNavigationController: BaseNavigationController {
        
    private let signInController = SignInController()
    private lazy var signUpController = SignUpController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [signInController]
    }
    
    
    func actionSignInToSignUp() {
        pushViewController(signUpController, animated: true)
    }
    
    
    func actionMain() {
        window?.rootViewController = MainTabbarController()
    }
}
