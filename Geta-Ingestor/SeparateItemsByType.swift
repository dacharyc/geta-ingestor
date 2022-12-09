//
//  SeparateItemsByType.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func convertDecoderStructsToShopItems(allShopItems: [ShopItemDecoderStruct]) {
//    print("I am in separateItemsByType func")
    var shopItems = [ShopItem]()

    for item in allShopItems {
        let thisCurrencyUnit = CurrencyUnit(rawValue: item.currencyUnit)
        let thisShopType = getShopType(stShortString: item.shopType)
        let thisBusinessAffluence = getBusinessAffluence(baShortString: item.businessAffluence)
//        print("The item \(item.name) has a shop type of \(thisShopType) and a business affluence of \(thisBusinessAffluence) and a currency unit of \(thisCurrencyUnit)")
        if let unwrappedCurrencyUnit = thisCurrencyUnit {
            let shopItem = ShopItem(
                id: UUID(),
                name: item.name,
                description: item.description,
                cost: item.cost,
                currencyUnit: unwrappedCurrencyUnit,
                shopType: thisShopType,
                businessAffluence: thisBusinessAffluence
            )
            shopItems.append(shopItem)
        } else {
            print("Item did not contain a valid currency unit")
        }
    }
    // print(shopItems)
    print("I have converted \(shopItems.count) items to ShopItems")
    writeToFile(shopItems: shopItems)
}
