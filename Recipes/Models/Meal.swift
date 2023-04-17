//
//  Meal.swift
//  Recipes
//
//  Created by Anisha on 16/04/23.
//

import Foundation

struct Meal: Decodable {
    var meals: [DessertName]
}

struct DessertName: Decodable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case strMeal, strMealThumb
        case id = "idMeal"
    }
    var strMeal: String?
    var strMealThumb: String?
    var id: String?
}
