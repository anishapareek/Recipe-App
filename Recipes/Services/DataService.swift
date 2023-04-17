//
//  DataService.swift
//  Recipes
//
//  Created by Anisha on 16/04/23.
//

import Foundation


class DataService {
    
    func fetchDessertNames() async -> [DessertName] {
        let urlString = Constants.dessertNamesUrl
            let url = URL(string: urlString)
            do {
                if let url = url {
                    let (data, _) = try await URLSession.shared.data(from: url)
                    do {
                        let result = try JSONDecoder().decode(Meal.self, from: data)
                        return result.meals
                    }
                    catch {
                        print(error)
                    }
                }
                
            }
            catch {
                print(error)
            }
        return [DessertName]()
    }
    
    func fetchDessertDetails(dessertId: String) async -> Dessert {
        let urlString = Constants.dessertDetailUrl + dessertId
        let url = URL(string: urlString)
        do {
            if let url = url {
                let (data, _) = try await URLSession.shared.data(from: url)
                do {
                    let result = try JSONDecoder().decode(DessertDetail.self, from: data)
                    return result.meals[0]
                }
                catch {
                    print(error)
                }
            }
            
        }
        catch {
            print(error)
        }
    return Dessert()
    }
}
