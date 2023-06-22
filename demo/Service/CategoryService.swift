//
//  CategoryService.swift
//  demo
//
//  Created by Usuario de proyectos on 22/6/23.
//

import Foundation

protocol CategoryServiceProtocol {
    func getCategories (url: String, completion: @escaping (_ success: Bool, _ data: Categories?, _ error: String?) -> ())
}

class CategoryService: CategoryServiceProtocol {
    func getCategories(url: String, completion: @escaping (Bool, Categories?, String?) -> ()) {
        HttpRequestHelper().GET(url: url) { success, data in
            if success {
                do {
                    let result = try JSONDecoder().decode(CategoryWrapper.self, from: data!)
                    let categories = result.categories
                    completion(true, categories, nil)
                } catch {
                    completion(false, nil, "Error: Error trying to parse CategoryWrapper")
                }
            } else {
                completion(false, nil, "Error: Categories GET request failed")
            }
            
        }
    }
}
