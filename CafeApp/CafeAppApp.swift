//
//  CafeAppApp.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 9.12.2024.
//

import SwiftUI

@main
struct CafeAppApp: App {
    let persistenceController = PersistenceController.shared
    
    //@StateObject var cartManager = CartManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                
        }
    }
}
