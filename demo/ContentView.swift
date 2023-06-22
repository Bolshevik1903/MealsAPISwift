//
//  ContentView.swift
//  demo
//
//  Created by Usuario de proyectos on 22/6/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var categoriesViewModel = CategoriesViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(categoriesViewModel.categories) {category in
                    Text(category.name)
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
