//
//  DessertListRow.swift
//  Recipes
//
//  Created by Anisha on 16/04/23.
//

import SwiftUI
import CachedAsyncImage

struct DessertListRow: View {
    
    var meal: DessertName
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                if let mealName = meal.strMeal, let mealImage = meal.strMealThumb {
                    // Image
                    CachedAsyncImage(
                        url: URL(string: mealImage),
                        content: { image in
                            image.resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .leading)
                                .clipped()
                                .cornerRadius(5)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )

                    // Dessert name
                    Text(mealName)
                    
                    Spacer()
                }
               
            }
        }
        
    }
}

