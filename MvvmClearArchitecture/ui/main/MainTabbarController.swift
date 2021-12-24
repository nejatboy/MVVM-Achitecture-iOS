//
//  MainTabbarController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import Foundation
import UIKit


class MainTabbarController: BaseTabbarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            HomeNavigationController(),
            ProfileNavigationController()
        ]
    }
    
    
    var homeNavigationController: HomeNavigationController {
        return viewControllers![0] as! HomeNavigationController
    }
    
    
    var profileNavigationController: ProfileNavigationController {
        return viewControllers![1] as! ProfileNavigationController
    }
}
