//
//  SignUpController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import Foundation


class SignUpController: BaseControllerHasNc<SignUpLayout, LoginNavigationController, BaseViewModel> {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout.buttonGoToMain.addTarget(self, action: #selector(buttonGoToMainClicked), for: .touchUpInside)
    }
    
    
    @objc private func buttonGoToMainClicked() {
        navigationController().actionMain()
    }
}
