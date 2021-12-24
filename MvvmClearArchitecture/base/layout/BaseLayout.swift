//
//  BaseLayout.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 16.12.2021.
//

import UIKit



class BaseLayout: UIView {
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        
        setupSubviews()
        setConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupSubviews() {}
    
    
    func setConstraints() {}
}
