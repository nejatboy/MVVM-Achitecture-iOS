//
//  RemoteRepository.swift
//  MvvmClearArchitecture
//
//  Created by Nejat BOY on 24.12.2021.
//

import Foundation

// http://dummy.restapiexample.com/api/v1/employees


enum Endpoint: String {
    case fetchEmployees = "/api/v1/employees"
}



class ApiService {
    
    private let baseUrl = "http://dummy.restapiexample.com"
    let urlSessions = URLSession.shared
    let jsonDecoder = JSONDecoder()
    
    
    func call<T>(
        for: T.Type,
        endpoint: Endpoint,
        methodType: String,
        body: Data? = nil,
        completion: @escaping(T?) -> Void
    ) where T: Decodable {
        
        let url = URL(string: baseUrl + endpoint.rawValue)!
        
        var request = URLRequest(url: url)
        request.httpMethod = methodType
        request.httpBody = body
        
        urlSessions.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("# WebServiceError -> \(error?.localizedDescription ?? "Error")")
                return DispatchQueue.main.async { completion(nil) }
            }
            
            print(response)

            do {
                let model = try JSONDecoder().decode(T.self, from: data)
                return DispatchQueue.main.async { completion(model) }
            }

            catch let decodingError {
                print("# WebServiceError -> \(decodingError.localizedDescription)")
                return DispatchQueue.main.async { completion(nil) }
            }

        }.resume()
    }
    
    
}
