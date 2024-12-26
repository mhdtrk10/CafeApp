//
//  SepetView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 10.12.2024.
//

import SwiftUI

struct SepetView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            if cartManager.cartItems.isEmpty {
                Text("Sepetiniz boş")
            }
            else {
                List {
                    ForEach(cartManager.cartItems.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                        HStack {
                            Text(product.name)
                            Spacer()
                            Text("\(product.price) TL x ")
                            Text("\(cartManager.cartItems[product]!)")
                        }
                        
                        
                    }
                    .onDelete(perform: deleteItems(at:))
                    
                }
                
                .listStyle(.insetGrouped)
                Text("Toplam: \(cartManager.cartItems.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                    .font(.headline)
                    .padding()
                NavigationLink("Masaya Aktar", destination: MasaView())
                .padding(10)
                .foregroundColor(Color(.white))
                .frame(width: 150 , height: 45)
                .background(Color(.purple))
                .cornerRadius(5)
            }
        }
        .navigationTitle("Sepet")
    }
    
    func deleteItems(at offsets: IndexSet) {
        let sortedKeys = cartManager.cartItems.keys.sorted(by: { $0.name < $1.name })
        for index in offsets {
            let product = sortedKeys[index]
            cartManager.cartItems.removeValue(forKey: product)
        }
    }
}



