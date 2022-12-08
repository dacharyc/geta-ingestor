//
//  SanitizeEnumInputs.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func sanitizeCurrencyUnits(decodedShopItems: [ShopItemDecoderStruct]) -> [ShopItemDecoderStruct] {
    var sanitizedShopItems = [ShopItemDecoderStruct]()
    for item in decodedShopItems {
        let itemWithSanitizedCurrencyUnit = ShopItemDecoderStruct(name: item.name, description: item.description, cost: item.cost, currencyUnit: item.currencyUnit.uppercased(), shopType: item.shopType, businessAffluence: item.businessAffluence)
        sanitizedShopItems.append(itemWithSanitizedCurrencyUnit)
    }
    return sanitizedShopItems
}

func sanitizeShopTypes(allshopItems: [ShopItemDecoderStruct]) -> [ShopItemDecoderStruct]{
    var sanitizedShopItemsShopType = [ShopItemDecoderStruct]()
    return sanitizedShopItemsShopType
}

func sanitizeBusinessAffluence(allshopItems: [ShopItemDecoderStruct]) -> [ShopItemDecoderStruct]{
    var sanitizedShopItemsBusinessAffluence = [ShopItemDecoderStruct]()
    return sanitizedShopItemsBusinessAffluence
}
