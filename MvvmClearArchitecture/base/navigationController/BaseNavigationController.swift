//
//  BaseNavigationController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    func showMessage(_ message: String) {
        print(message)
    }
    
    
    var window: UIWindow? {
        return view.superview as? UIWindow
    }
}
