//
//  Recipe.swift
//  RecipeList
//
//  Created by Mason Garrett on 2022-01-12.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights: [String]
    var ingredients:[Ingredient]
    var directions:[String]
}
