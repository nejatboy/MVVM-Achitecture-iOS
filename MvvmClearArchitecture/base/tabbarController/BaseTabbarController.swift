//
//  BaseTabbarController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit

class BaseTabbarController: UITabBarController {
    
    var apiService = ApiService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    func showMessage(_ message: String) {
        print(message)
    }
    
    
    var window: UIWindow? {
        return view.superview as? UIWindow
    }
}
