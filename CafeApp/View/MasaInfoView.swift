//
//  MasaInfoView.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 20.12.2024.
//

import SwiftUI
import CoreData

struct MasaInfoView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @StateObject var dm = DataModel()
    
    @ObservedObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            if cartManager.masaItems1.isEmpty && cartManager.masaItems2.isEmpty && cartManager.masaItems3.isEmpty && cartManager.masaItems4.isEmpty && cartManager.masaItems5.isEmpty {
                Text("Sepetiniz boş")
            }
            else {
                List {
                    if cartManager.page == 1 {
                        ForEach(cartManager.masaItems1.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                            HStack {
                                Text(product.name)
                                Spacer()
                                Text("\(product.price) TL x ")
                                Text("\(cartManager.masaItems1[product]!)")
                            }
                            
                            
                        }

                    }
                    else if cartManager.page == 2 {
                        ForEach(cartManager.masaItems2.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                            HStack {
                                Text(product.name)
                                Spacer()
                                Text("\(product.price) TL x ")
                                Text("\(cartManager.masaItems2[product]!)")
                            }
                            
                            
                        }

                    }
                    else if cartManager.page == 3 {
                        ForEach(cartManager.masaItems3.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                            HStack {
                                Text(product.name)
                                Spacer()
                                Text("\(product.price) TL x ")
                                Text("\(cartManager.masaItems3[product]!)")
                            }
                            
                            
                        }

                    }
                    else if cartManager.page == 4 {
                        ForEach(cartManager.masaItems4.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                            HStack {
                                Text(product.name)
                                Spacer()
                                Text("\(product.price) TL x ")
                                Text("\(cartManager.masaItems4[product]!)")
                            }
                            
                            
                        }

                    }
                    else {
                        ForEach(cartManager.masaItems5.keys.sorted(by: { $0.name < $1.name }), id: \.self) { product in
                            HStack {
                                Text(product.name)
                                Spacer()
                                Text("\(product.price) TL x ")
                                Text("\(cartManager.masaItems5[product]!)")
                            }
                            
                            
                        }

                    }
                    
                }
                .listStyle(.insetGrouped)
                
                switch cartManager.page {
                case 1:
                    Text("Toplam: \(cartManager.masaItems1.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                        .font(.headline)
                        .padding()
                case 2:
                    Text("Toplam: \(cartManager.masaItems2.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                        .font(.headline)
                        .padding()
                case 3:
                    Text("Toplam: \(cartManager.masaItems3.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                        .font(.headline)
                        .padding()
                case 4:
                    Text("Toplam: \(cartManager.masaItems4.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                        .font(.headline)
                        .padding()
                case 5:
                    Text("Toplam: \(cartManager.masaItems5.reduce(0) { $0 + $1.value * $1.key.price}) TL")
                        .font(.headline)
                        .padding()
                default: Text("0 TL")
                }
               
                Button("Öde") {
                    switch cartManager.page {
                    case 1:
                        dm.savetoCoreData(context: viewContext, dictionary: cartManager.masaItems1)
                    case 2:
                        dm.savetoCoreData(context: viewContext, dictionary: cartManager.masaItems2)
                    case 3:
                        dm.savetoCoreData(context: viewContext, dictionary: cartManager.masaItems3)
                    case 4:
                        dm.savetoCoreData(context: viewContext, dictionary: cartManager.masaItems4)
                    case 5:
                        dm.savetoCoreData(context: viewContext, dictionary: cartManager.masaItems5)
                    default :
                        print("başarısız...")
                    }
                }
                .padding(10)
                .foregroundColor(Color(.white))
                .frame(width: 150 , height: 35)
                .background(Color(.purple))
                .cornerRadius(5)
                
            }
        }
        .navigationTitle("MasaInfoView")
    }
}


