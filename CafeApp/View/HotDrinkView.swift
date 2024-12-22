//
//  HotDrinkView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 10.12.2024.
//

import SwiftUI

struct HotDrinkView: View {
    
    
    @ObservedObject var cartManager = CartManager()
    @StateObject  var vm = ProductViewModel()
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .center, spacing: 20) {
                    ForEach($vm.products, id: \.self) { $product in
                        VStack {
                            Image(product.imageName)
                                .padding()
                                .frame(width: 80, height: 100)
                            Text(product.name)
                                .padding(10)
                            Text("\(product.price * product.selectedQuantity) TL")
                                .padding(10)
                            Stepper("\(product.selectedQuantity)",value: $product.selectedQuantity, in: 1...10) {_ in
                                
                            }
                            .padding(.horizontal, 123)
                            Button("Sepete Ekle") {
                                cartManager.addToCart(product: product, quantity: product.selectedQuantity)
                            }
                            .padding(10)
                            .foregroundColor(Color(.white))
                            .frame(width: 120 , height: 35)
                            .background(Color(.purple))
                            .cornerRadius(5)
                        }
                    }
                    HStack {
                        NavigationLink("sepete git", destination: SepetView(cartManager: cartManager))
                            .padding(10)
                            .foregroundColor(Color(.white))
                            .frame(width: 150 , height: 35)
                            .background(Color(.purple))
                            .cornerRadius(5)
                        NavigationLink("Masalar", destination: MasaView(cartManager: cartManager))
                            .padding(5)
                            .foregroundColor(Color(.white))
                            .frame(width: 150 , height: 35)
                            .background(Color(.purple))
                            .cornerRadius(5)
                    }
                }
                .padding()
                
            }
        }
    }
    func groupedProducts() -> [[Product]] {
        stride(from: 0, to: vm.products.count, by: 2).map { index in
            Array(vm.products[index..<min(index + 2, vm.products.count)])
                }
    }
}



#Preview {
    HotDrinkView()
        
        
        
}
