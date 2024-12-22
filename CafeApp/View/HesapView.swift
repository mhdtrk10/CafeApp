//
//  HesapView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 23.12.2024.
//

import SwiftUI
import CoreData
struct HesapView: View {
    
    @FetchRequest(
            entity: Item.entity(),
            sortDescriptors: [NSSortDescriptor(keyPath: \Item.name, ascending: true)]
        ) var items: FetchedResults<Item>
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                HStack {
                    Text(item.name ?? "bilimiyor")
                    Text("x ")
                    Text("\(item.quantity)")
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    HesapView()
}
