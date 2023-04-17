//
//  RecipeModel.swift
//  Recipes
//
//  Created by Anisha on 15/04/23.
//

import Foundation


class DessertModel: ObservableObject {
    
    @Published var dessertNames = [DessertName]()
    @Published var dessertDetails = Dessert()
    
    @MainActor
    func publishDessertNames() async -> [DessertName] {
        self.dessertNames = await DataService().fetchDessertNames()
        self.dessertNames.sort{
            $0.strMeal ?? "" < $1.strMeal ?? ""
        }
        return dessertNames
    }
    
    @MainActor
    func publishDessertDetails(dessertId: String) async -> Dessert {
        self.dessertDetails = await DataService().fetchDessertDetails(dessertId: dessertId)
        return dessertDetails
    }
}
