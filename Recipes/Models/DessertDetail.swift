//
//  DessertDetail.swift
//  Recipes
//
//  Created by Anisha on 15/04/23.
//

import Foundation

struct DessertDetail: Decodable {
    var meals: [Dessert]
}

struct Dessert: Decodable, Identifiable {
    
    enum CodingKeys: String, CodingKey {
        
        case id = "idMeal"
        
        case strMeal
        case strMealThumb
        case strInstructions
        
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
        
        
    }
    
    var id: String?
    
    var strMeal: String?
    var strInstructions: String?
    var strMealThumb: String?
    
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    
    
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?
    
    func getIngredients() -> [String] {
        
        var ingredients = [String]()
        
        if let ingr = self.strIngredient1, let measure = self.strMeasure1 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient2, let measure = self.strMeasure2 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient3, let measure = self.strMeasure3 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient4, let measure = self.strMeasure4 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient5, let measure = self.strMeasure5 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient6, let measure = self.strMeasure6 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient7, let measure = self.strMeasure7 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient8, let measure = self.strMeasure8 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient9, let measure = self.strMeasure9 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient10, let measure = self.strMeasure10 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient11, let measure = self.strMeasure11 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient12, let measure = self.strMeasure12 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient13, let measure = self.strMeasure13 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient14, let measure = self.strMeasure14 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient15, let measure = self.strMeasure15 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient16, let measure = self.strMeasure16 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient17, let measure = self.strMeasure17 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient18, let measure = self.strMeasure18 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient19, let measure = self.strMeasure19 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        if let ingr = self.strIngredient20, let measure = self.strMeasure20 {
            if !ingr.isEmpty && !measure.isEmpty {
                ingredients.append(measure + " " + ingr)
            }
        }
        
        return ingredients
    }

}
