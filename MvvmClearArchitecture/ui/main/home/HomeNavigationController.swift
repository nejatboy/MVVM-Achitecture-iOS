//
//  HomeNavigationController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 17.12.2021.
//

import Foundation


class HomeNavigationController: BaseNavigationControllerHasTc<MainTabbarController> {
    
    private let homeController = HomeController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.title = "Home"
        
        viewControllers = [homeController]
    }
}
