//
//  FoodModel.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 30/05/23.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let description: String
    let expirationDate: String
    let image: String
    let name: String
    let quantity: Int
    let unit: String
}

//let food1 = Food(description: "Pasta", expirationDate: "", image: <#T##String#>, name: <#T##String#>, quantity: <#T##Int#>, unit: <#T##String#>)
