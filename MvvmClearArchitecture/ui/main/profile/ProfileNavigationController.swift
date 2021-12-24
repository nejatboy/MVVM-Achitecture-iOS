//
//  ProfileNavigationController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 17.12.2021.
//

import Foundation

class ProfileNavigationController: BaseNavigationControllerHasTc<MainTabbarController> {
    
    private let profileController = ProfileController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.title = "Profile"
        viewControllers = [profileController]
    }
}
