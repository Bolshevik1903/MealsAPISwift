//
//  Category.swift
//  demo
//
//  Created by Usuario de proyectos on 22/6/23.
//

import Foundation

typealias Categories = [Category]

struct Category:Decodable, Identifiable {
    let id: String
    let name: String
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idCategory"
        case name = "strCategory"
        case poster = "strCategoryThumb"
    }
}

struct CategoryWrapper: Decodable {
    let categories: [Category]
    enum CodingKeys: String, CodingKey {
        case categories
    }
}
