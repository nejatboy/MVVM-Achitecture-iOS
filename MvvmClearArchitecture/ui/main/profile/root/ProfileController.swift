//
//  ProfileController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 20.12.2021.
//

import Foundation


class ProfileController: BaseControllerHasTcNc<ProfileLayout, MainTabbarController, ProfileNavigationController, BaseViewModel> {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Profile"
    }
    
    
    
}
