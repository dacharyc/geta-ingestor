//
//  WriteToFile.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func writeToFile(shopItems: [ShopItem]) {
    Storage.store(shopItems, to: .documents, as: "shopItems.json")
    
    let retrievedShopItems = Storage.retrieve("shopItems.json", from: .documents, as: [ShopItem].self)
    print("Successfully retrieved \(retrievedShopItems.count) items, and the first one is named \(retrievedShopItems.first?.name)")
}
