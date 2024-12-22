//
//  CartManager.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 17.12.2024.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cartItems: [Product: Int] = [:] // Ürün ve miktar
    
    @Published var masaItems1: [Product: Int] = [:] // masa 1
    @Published var masaItems2: [Product: Int] = [:] // masa 2
    @Published var masaItems3: [Product: Int] = [:] // masa 3
    @Published var masaItems4: [Product: Int] = [:] // masa 4
    @Published var masaItems5: [Product: Int] = [:] // masa 5
    
    @Published var gecici: Int = 0
    @Published var page: Int = 0
    
    func addToCart(product: Product, quantity: Int) {
        if let currentQuantity = cartItems[product] {
            cartItems[product] = currentQuantity + quantity
        } else {
            cartItems[product] = quantity
        }
    }
    
    func addToItems1(product: Product, quantity: Int) {
        if let currentQuantity = masaItems1[product] {
            masaItems1[product] = currentQuantity + quantity
        } else {
            masaItems1[product] = quantity
        }
    }
        
}
