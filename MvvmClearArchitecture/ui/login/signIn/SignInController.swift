//
//  SignInController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import Foundation


class SignInController: BaseControllerHasNc<SignInLayout, LoginNavigationController, BaseViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout.buttonGoToSignUp.addTarget(self, action: #selector(buttonTestClick), for: .touchUpInside)
    }
    
    
    @objc private func buttonTestClick() {
        navigationController().actionSignInToSignUp()
    }
}
