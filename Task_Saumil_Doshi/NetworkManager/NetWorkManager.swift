//
//  NetWorkManager.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

class NetWorkManager {
    
    static let shared = NetWorkManager()
    
    func getData<T: Codable>(urlString: String,completion: @escaping  (Result<T,Error>) -> Void) {
        
        guard let urlString = URL(string: urlString) else {
            completion(.failure(NSError(domain: "Invalid url", code: 1, userInfo: nil)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlString) { data, response, error in
            
            guard let data = data else {
                completion(.failure(NSError(domain: "Invalid data", code: 1, userInfo: nil)))
                return
            }
            
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(NSError(domain: "Invalid data", code: 1, userInfo: nil)))
            }
            
        }
        task.resume()
    }
    
}
