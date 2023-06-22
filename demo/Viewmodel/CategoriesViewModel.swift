//
//  CategoriesViewModel.swift
//  demo
//
//  Created by Usuario de proyectos on 22/6/23.
//

import Foundation

class CategoriesViewModel: ObservableObject {
    
    @Published var categories = Categories()
    
    init() {
        let url = "https://www.themealdb.com/api/json/v1/1/categories.php"
        CategoryService().getCategories(url: url) { success, data, error in
            if success, let categories = data {
                self.categories = categories
            }
        }
        
    }
}
