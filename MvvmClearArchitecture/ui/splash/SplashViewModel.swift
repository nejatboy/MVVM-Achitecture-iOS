//
//  SplashViewModel.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 22.12.2021.
//

import Foundation



class SplashViewModel: BaseViewModel {
    
    private let repository = Repository()
    
    var employess = Observable([Employee]())
    
    var versionCode = Observable("")
    
    
    func requestFetchEmployees(api: ApiService) {
        repository.requestFetchEmployees(api: api) {
            self.employess.value = $0
        }
    }
    
    
    func checkVersionCode() {
        /**
         ASYNC FETCHING
         */
        
        
        versionCode.value = "1.02"
    }
}
