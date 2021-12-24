//
//  BaseControllerHasTcNc.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit



class BaseControllerHasTcNc<L: UIView, TC: BaseTabbarController, NC: BaseNavigationController, VM: BaseViewModel>: BaseControllerHasNc<L, NC, VM> {
    
    func tabbarController() -> TC {
        return tabBarController as! TC
    }
    
    
    override func showMessage(_ message: String) {
        tabbarController().showMessage(message)
    }
}
