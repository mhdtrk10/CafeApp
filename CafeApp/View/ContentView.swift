//
//  ContentView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 9.12.2024.
//

import SwiftUI
import CoreData




struct ContentView: View {
    @ObservedObject  var cartManager = CartManager() 

    var body: some View {
        
        
        HStack {
            
            NavigationView {
                VStack(alignment: .leading) {
                    
                    
                    
                    NavigationLink(destination: HotDrinkView()) {
                        Text("Sıcak İçecekler")
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40)
                    .background(Color(.purple))
                    .cornerRadius(5)
                    
                    NavigationLink(destination: HotDrinkView()) {
                        Text("Soğuk İçecekler")
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40)
                    .background(Color(.purple))
                    .cornerRadius(5)
                    NavigationLink(destination: HotDrinkView()) {
                        Text("Tatlılar")
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40)
                    .background(Color(.purple))
                    .cornerRadius(5)
                }
                .padding(7)
            }
            
            
            
        }
    }
}




#Preview {
    ContentView()
       

        
}