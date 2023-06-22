//
//  HttpRequestHelper.swift
//  demo
//
//  Created by Usuario de proyectos on 22/6/23.
//

import Foundation

class HttpRequestHelper {
    func GET(url: String, completion: @escaping (Bool, Data?) -> ()) {
        guard let url = URL(string: url) else {
            completion(false, nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard error == nil else {
                completion(false, nil)
                return
            }
            
            guard let data = data else {
                completion(false, nil)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(false, nil)
                return
            }
            
            completion(true, data)
        }
        
        task.resume()
    }
}
