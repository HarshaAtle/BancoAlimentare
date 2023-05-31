//
//  InventoryViewModel.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 30/05/23.
//

import Foundation

//import Firebase


//class InventoryViewModel: ObservableObject {
//    @Published var food: [Food] = []
//    
//    init() {
//        let inventoryRef = Firestore.firestore().collection("inventory")
//        inventoryRef.getDocuments { snapshot, error in
//            if let error = error {
//                print("Errore durante il recupero dei dati: \(error.localizedDescription)")
//                return
//            }
//            
//            guard let documents = snapshot?.documents else {
//                print("Nessun documento trovato")
//                return
//            }
//            
//            self.foodItems = documents.compactMap { document in
//                guard
//                    let data = document.data(),
//                    let name = data["name"] as? String,
//                    let description = data["description"] as? String,
//                    let quantity = data["quantity"] as? Int
//                else {
//                    return nil
//                }
//                
//                return Food(name: name, description: description, quantity: quantity)
//            }
//        }
//    }
//}
