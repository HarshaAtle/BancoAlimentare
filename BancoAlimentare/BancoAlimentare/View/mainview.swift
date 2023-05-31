//
//  mainview.swift
//  BancoAlimentare
//
//  Created by Gennaro Caccavallo on 31/05/23.
//

import SwiftUI

struct mainview: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                //Good Morning
                Text("Good Morning").font(.system(size: 15, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)))
                
                //Mensa dei Poveri
                Text("Mensa dei Poveri").font(.system(size: 20, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.08, green: 0.08, blue: 0.13, alpha: 1)))
            }
            Spacer()
            HStack(alignment: .bottom) {
                //Popular/settings
                Button {
                    
                } label: {
                    Image("search")
                        .frame(width: 28, height: 28)
                }
                
                //Notifications/bell
                Button {
                    
                } label: {
                    Image("bell")
                        .frame(width: 28, height: 28)
                }

                //Popular/search
                Button {
                    <#code#>
                } label: {
                    Image("setting")
                        .frame(width: 28, height: 28)
                }

                
            }
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).ignoresSafeArea()
    }
}


struct mainview_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
