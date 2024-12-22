//
//  DataModel.swift
//  CafeApp
//
//  Created by Mehdi Oturak on 10.12.2024.
//

import Foundation
import CoreData

class DataModel: ObservableObject { 
    
    func savetoCoreData(context: NSManagedObjectContext, dictionary: [Product: Int]) {
        for (name, quantity) in dictionary {
            let newItem = Item(context: context)
            newItem.name = name.name
            newItem.quantity = Int64(quantity)
        }
        
        
        do {
            try context.save()
            print("başarıyla kaydedildi!")
        } catch {
            print("Hata: \(error.localizedDescription)")
        }
    }
    
    
}
