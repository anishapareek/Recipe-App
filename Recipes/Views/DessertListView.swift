//
//  ContentView.swift
//  Recipes
//
//  Created by Anisha on 15/04/23.
//

import SwiftUI

struct DessertListView: View {
    
    @StateObject var model = DessertModel()
    @State private var dessertNames = [DessertName]()
    @State private var dessertDetail = Dessert()
    
    var body: some View {
        NavigationView {

            List(self.dessertNames) {dessertName in
                NavigationLink {
                    DessertDetailView(dessertName: dessertName, dessertId: dessertName.id ?? "")
                } label: {
                    DessertListRow(meal: dessertName)
                }
            }.task {
                self.dessertNames = await model.publishDessertNames()
                 
            }.navigationTitle("Desserts")
        }
        
    }
}

struct DessertListView_Previews: PreviewProvider {
    static var previews: some View {
        DessertListView()
    }
}
