//
//  ProductViewModel.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 17.12.2024.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products: [Product] = [
        
        Product(name: "Caramel Latte", imageName: "caramellatte", price: 120),
        Product(name: "White Mocha", imageName: "whitemocha", price: 160),
        Product(name: "Sıcak Çikolata", imageName: "sicakcikolata", price: 100),
        Product(name: "Toffee Latte", imageName: "toffeelatte", price: 140),
        
    ]
    
}
