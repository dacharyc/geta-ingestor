//
//  SanitizeEnumInputs.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func convertEnumsToAppropriateCase(decodedShopItems: [ShopItemDecoderStruct]) -> [ShopItemDecoderStruct] {
    var sanitizedShopItems = [ShopItemDecoderStruct]()
    for item in decodedShopItems {
        let itemWithSanitizedCurrencyUnit = ShopItemDecoderStruct(name: item.name, description: item.description, cost: item.cost, currencyUnit: item.currencyUnit.uppercased(), shopType: item.shopType.lowercased(), businessAffluence: item.businessAffluence.lowercased())
        sanitizedShopItems.append(itemWithSanitizedCurrencyUnit)
    }
    return sanitizedShopItems
}
