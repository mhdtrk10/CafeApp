//
//  MasaView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 20.12.2024.
//

import SwiftUI

struct MasaView: View {
    
    let masalar = [1,2,3,4,5]
    
    @ObservedObject var cartManager = CartManager()
    @State private var navigateToDetail: Bool = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .center,spacing: 10) {
                    ForEach(masalar, id: \.self) { masa in
                        Image("masaicon")
                            .frame(width: 130, height: 180)
                            .padding(10)
                        Text("Masa \(masa)")
                            .bold()
                        Button("Ekle") {
                            
                            if masa == 1 {
                                //print("\(masa)")
                                cartManager.gecici = 1
                                cartManager.masaItems1.merge(cartManager.cartItems) {_, new in new }
                            }
                            else if masa == 2 {
                                //print("\(masa)")
                                cartManager.gecici = 2
                                cartManager.masaItems2.merge(cartManager.cartItems) {_, new in new }
                            }
                            else if masa == 3 {
                                //print("\(masa)")
                                cartManager.gecici = 3
                                cartManager.masaItems3.merge(cartManager.cartItems) {_, new in new }
                            }
                            else if masa == 4 {
                                //print("\(masa)")
                                cartManager.gecici = 4
                                cartManager.masaItems4.merge(cartManager.cartItems) {_, new in new }
                            }
                            else {
                                //print("\(masa)")
                                cartManager.gecici = 5
                                cartManager.masaItems5.merge(cartManager.cartItems) {_, new in new }
                            }
                        }
                        .padding(10)
                        .foregroundColor(Color(.white))
                        .frame(width: 120 , height: 35)
                        .background(Color(.purple))
                        .cornerRadius(5)
                        
                        Button("görüntüle") {
                            
                            if masa == 1 {
                                cartManager.page = 1
                                //print(cartManager.page)
                            }
                            else if masa == 2 {
                                cartManager.page = 2
                                //print(cartManager.page)
                            }
                            else if masa == 3 {
                                cartManager.page = 3
                                //print(cartManager.page)
                            }
                            else if masa == 4 {
                                cartManager.page = 4
                                //print(cartManager.page)
                            }
                            else {
                                cartManager.page = 5
                                //print(cartManager.page)
                            }
                            
                            navigateToDetail = true
                        }
                        .padding(10)
                        .foregroundColor(Color(.white))
                        .frame(width: 120 , height: 35)
                        .background(Color(.purple))
                        .cornerRadius(5)
                        
                        NavigationLink(
                            destination: MasaInfoView(cartManager: cartManager),
                            isActive: $navigateToDetail
                        ) {
                            
                        }
                        
                    }
                    
                }
                NavigationLink("Ödenenler", destination: HesapView())
                    .padding(5)
                    .foregroundColor(Color(.white))
                    .frame(width: 160 , height: 35)
                    .background(Color(.purple))
                    .cornerRadius(5)
                
            }
            
        }
        .navigationTitle("Masalar")
        
    }
        
}

#Preview {
    MasaView()
}
