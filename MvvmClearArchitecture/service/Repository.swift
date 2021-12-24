//
//  Repository.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 24.12.2021.
//

import Foundation



struct Repository {
    
    
    func requestFetchEmployees(api: ApiService, completion: @escaping ([Employee]) -> Void) {
        api.call(for: EmployeeResponse.self, endpoint: .fetchEmployees, methodType: "GET") {
            guard let empleyees = $0?.data else { return }
            completion(empleyees)
        }
    }
}
