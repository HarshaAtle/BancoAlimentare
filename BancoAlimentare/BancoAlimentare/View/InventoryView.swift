//
//  InventoryView.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 30/05/23.
//

import SwiftUI
//import Firebase

struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let quantity: Int
    let expirationDate: Date
    let unit: String
    let imageURL: URL
}

//class InventoryViewModel: ObservableObject {
//    @Published var foodItems: [FoodItem] = []
//    
//    init() {
//        // Query del tuo database Firebase per ottenere i dati dell'inventario
//        let inventoryRef = Firestore.firestore().collection("foods")
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
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateFormat = "yyyy-MM-dd"
//            
//            self.foodItems = documents.compactMap { document in
//                guard
//                    let name = document.data()["name"] as? String,
//                    let description = document.data()["description"] as? String,
//                    let quantity = document.data()["quantity"] as? Int,
//                    let expirationDateString = document.data()["expiration_date"] as? String,
//                    let expirationDate = dateFormatter.date(from: expirationDateString),
//                    let unit = document.data()["unit"] as? String,
//                    let imageURLString = document.data()["image"] as? String,
//                    let imageURL = URL(string: imageURLString)
//                else {
//                    return nil
//                }
//                
//                return FoodItem(
//                    name: name,
//                    description: description,
//                    quantity: quantity,
//                    expirationDate: expirationDate,
//                    unit: unit,
//                    imageURL: imageURL
//                )
//            }
//        }
//    }
//}
//
//struct InventoryView: View {
//    @ObservedObject var viewModel = InventoryViewModel()
//    
//    var body: some View {
//        NavigationView {
//            List(viewModel.foodItems) { foodItem in
//                VStack(alignment: .leading, spacing: 8) {
//                    AsyncImage(url: foodItem.imageURL) { image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(maxHeight: 200)
//                    .cornerRadius(8)
//                    
//                    Text(foodItem.name)
//                        .font(.headline)
//                    
//                    Text(foodItem.description)
//                        .foregroundColor(.gray)
//                    
//                    Text("Quantità disponibile: \(foodItem.quantity) \(foodItem.unit)")
//                        .font(.subheadline)
//                    
//                    Text("Scadenza: \(formattedDate(foodItem.expirationDate))")
//                        .font(.subheadline)
//                        .foregroundColor(expirationDateColor(foodItem.expirationDate))
//                }
//                .padding()
//            }
//            .navigationTitle("Inventario")
//        }
//    }
//    
//    func formattedDate(_ date: Date) -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "dd/MM/yyyy"
//        return dateFormatter.string(from: date)
//    }
//    
//    func expirationDateColor(_ date: Date) -> Color {
//        let daysRemaining = Calendar.current.dateComponents([.day], from: Date(), to: date).day ?? 0
//        
//        switch daysRemaining {
//        case ..<0:
//            return .red
//        case 0...3:
//            return .orange
//        default:
//            return .primary
//        }
//    }
//}
//
//struct InventoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryView()
//    }
//}
