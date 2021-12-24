//
//  BaseControllerHasNavigationController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit


class BaseControllerHasNc<L: UIView, NC: BaseNavigationController, VM: BaseViewModel>: BaseController<L, VM> {
    
    func navigationController() -> NC {
        return navigationController as! NC
    }
    
    
    override func showMessage(_ message: String) {
        navigationController().showMessage(message)
    }
}
