//
//  DessertDetailView.swift
//  Recipes
//
//  Created by Anisha on 16/04/23.
//

import SwiftUI
import CachedAsyncImage

struct DessertDetailView: View {
    var dessertName: DessertName
    var dessertId: String
    @State private var dessertDetails = Dessert()
    @ObservedObject var model = DessertModel()
    @State private var ingredients = [String]()
    @State private var instructions = [String]()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                let url = URL(string: dessertDetails.strMealThumb ?? "")
                if let url = url {
                    CachedAsyncImage(
                        url: url,
                        content: { image in
                            image.resizable()
                                .scaledToFill()
                                .clipped()
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                }
                
            
            
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.top, .bottom], 5)
                ForEach(dessertDetails.getIngredients(), id: \.self) { item in
                    Text("• " + item)
                }
            }.padding(.all)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Instructions")
                    .font(.headline)
                    .padding([.top, .bottom], 5)
                Text(dessertDetails.strInstructions ?? " ")
                    .padding([.top, .bottom], 5)
            }.padding(.horizontal)
            }.task {
                self.dessertDetails = await model.publishDessertDetails(dessertId: dessertName.id ?? "")
            }
            
        }.navigationTitle(dessertName.strMeal ?? "")
    }
    
}

struct DessertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetailView(dessertName: DessertName(), dessertId: "")
    }
}
