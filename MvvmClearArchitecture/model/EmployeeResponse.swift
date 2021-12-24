//
//  EmployeeResponse.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 24.12.2021.
//

import Foundation


struct EmployeeResponse: Codable {
    let status: String
    let data: [Employee]
    let message: String
}
