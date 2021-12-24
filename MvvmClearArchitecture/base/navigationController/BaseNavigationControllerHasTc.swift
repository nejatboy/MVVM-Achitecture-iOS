//
//  BaseNavigationControllerHasTabbarController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import Foundation


class BaseNavigationControllerHasTc<TB: BaseTabbarController>: BaseNavigationController {
    
    func tabbarController() -> TB {
        return tabBarController as! TB
    }
}
