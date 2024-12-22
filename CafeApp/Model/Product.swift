//
//  Product.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 14.12.2024.
//

import Foundation

struct Product: Identifiable, Hashable {
    
    let id = UUID()
    let name: String
    let imageName: String
    let price: Int
    var selectedQuantity = 1
    
    
}
