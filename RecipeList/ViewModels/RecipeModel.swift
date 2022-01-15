//
//  RecipeModel.swift
//  RecipeList
//
//  Created by Mason Garrett on 2022-01-12.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipies = [Recipe]()
    
    init() {
        self.recipies = DataService.getLocalData()
    }
}
