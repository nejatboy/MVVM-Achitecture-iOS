//
//  HomeController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 20.12.2021.
//

import Foundation


class HomeController: BaseControllerHasTcNc<HomeLayout, MainTabbarController, HomeNavigationController, BaseViewModel> {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
    }
}
