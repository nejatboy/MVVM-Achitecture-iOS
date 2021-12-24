//
//  Employee.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 24.12.2021.
//

import Foundation


struct Employee: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
