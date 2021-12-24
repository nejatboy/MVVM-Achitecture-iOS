//
//  BaseControllerController.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit

class BaseController<L: UIView, VM: BaseViewModel>: UIViewController {
    
    var viewModel: VM?
    
    
    override func loadView() {
        view = L()
        viewModel = prepareViewModel()
    }

    
    var layout: L {
        return view as! L
    }
    
    
    func prepareViewModel() -> VM? {
        return nil
    }
    
    
    func showMessage(_ message: String) {
        print(message)
    }
    
    
    var window: UIWindow? {
        return view.superview as? UIWindow
    }
}
