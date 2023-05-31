//
//  Form.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 31/05/23.
//

import SwiftUI

struct InputForm: View {
    @State  var description: String = ""
    @State  var expiration: Date = Date()
    @State  var name: String = ""
    @State  var unit: String = ""
    @State  var quantity: String = ""
    
    var body: some View {

        
        Form{
            TextField("Name", text: $name)
            TextField("quantity", text: $quantity)
                .keyboardType(.numberPad)
            TextField("Enter Food Description", text: $description)
            DatePicker("Enter Experiration Date", selection: $expiration, displayedComponents: .date)
               // .datePickerStyle(.graphical)
          
            TextField("Unit", text: $unit)
                        
            
            
            
        }
    }
}

//struct Form_Previews: PreviewProvider {
//    static var previews: some View {
//        Form()
//    }
//}
