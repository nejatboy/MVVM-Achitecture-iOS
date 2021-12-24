//
//  SplashController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit


class SplashController: BaseController<SplashLayout, SplashViewModel> {
    
    private let apiService = ApiService()
    
    
    override func prepareViewModel() -> SplashViewModel? {
        return SplashViewModel()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout.buttonGoToLogin.addTarget(self, action: #selector(buttonGoToLoginClick), for: .touchUpInside)
        
        viewModel!.employess.bind(observeEmployees(_:))
        
        viewModel!.requestFetchEmployees(api: apiService)
    }
    
    
    @objc private func buttonGoToLoginClick() {
        window?.rootViewController = LoginNavigationController()
    }
    
    
    private func observeEmployees(_ employess: [Employee]) {
        // UPDATE UI
    }
}
