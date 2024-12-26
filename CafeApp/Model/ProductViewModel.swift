//
//  ProductViewModel.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 17.12.2024.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products: [Product] = [
        
        Product(name: "Caramel Latte", imageName: "hotcaramel", price: 120),
        Product(name: "White Mocha", imageName: "whitemocha", price: 160),
        Product(name: "Sıcak Çikolata", imageName: "sicakcikolata", price: 100),
        Product(name: "Toffee Latte", imageName: "toffeelatte", price: 140),
        
    ]
    @Published var tatliProducts: [Product] = [
        
        Product(name: "San Sebastian", imageName: "sansebastian", price: 200),
        Product(name: "Meyveli Pasta", imageName: "meyvelipasta", price: 140),
        Product(name: "Waffle", imageName: "waffle", price: 170),
        Product(name: "Browni Pasta", imageName: "brownipasta", price: 220),
        
        ]
    @Published var coldProducts: [Product] = [
        
        Product(name: "Ice Caramel Latte", imageName: "caramellatte", price: 150),
        Product(name: "Ice White Mocha", imageName: "icewhitemocha", price: 170),
        Product(name: "Ice Americano", imageName: "iceamericano", price: 100),
        Product(name: "Ice Espresso", imageName: "iceespresso", price: 140),
        
        ]
    
}
