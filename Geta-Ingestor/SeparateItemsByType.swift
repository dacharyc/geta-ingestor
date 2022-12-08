//
//  SeparateItemsByType.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func separateItemsByType(allShopItems: [ShopItemDecoderStruct]) {
    print("I am in separateItemsByType func")
    var armorsmithItems = [ShopItem]()
    var blacksmithItems = [ShopItem]()
    var booksAndSpellsItems = [ShopItem]()
    var bowyerItems = [ShopItem]()
    var clothingItems = [ShopItem]()
    var foodstuffsItems = [ShopItem]()
    var gemsAndJewelryItems = [ShopItem]()
    var generalStoreItems = [ShopItem]()
    var herbsItems = [ShopItem]()
    var livestockItems = [ShopItem]()
    var magicItems = [ShopItem]()
    var magicWeaponsAndArmorItems = [ShopItem]()
    var petsAndSuppliesItems = [ShopItem]()
    var poisonsItems = [ShopItem]()
    var potionsItems = [ShopItem]()
    var weaponryItems = [ShopItem]()
    for item in allShopItems {
        let thisCurrencyUnit = CurrencyUnit(rawValue: item.currencyUnit)
        // print("I may have a currency unit? \(thisCurrencyUnit)")
        guard let thisCurrencyUnit else { break }
        let shopItem = ShopItem(
            id: UUID(),
            name: item.name,
            description: item.description,
            cost: item.cost,
            currencyUnit: thisCurrencyUnit
        )
        
        let shopTypeEnumCase = ShopType(rawValue: item.shopType)
        // print("I may have a shop type enum? \(shopTypeEnumCase)")
        guard let shopTypeEnumCase else { break }
        switch shopTypeEnumCase {
        case .armorsmith:
            armorsmithItems.append(shopItem)
        case .blacksmith:
            blacksmithItems.append(shopItem)
        case .booksAndSpells:
            booksAndSpellsItems.append(shopItem)
        case .bowyer:
            bowyerItems.append(shopItem)
        case .clothing:
            clothingItems.append(shopItem)
        case .foodstuffs:
            foodstuffsItems.append(shopItem)
        case .gemsAndJewelry:
            gemsAndJewelryItems.append(shopItem)
        case .generalStore:
            generalStoreItems.append(shopItem)
        case .herbs:
            herbsItems.append(shopItem)
        case .livestock:
            livestockItems.append(shopItem)
        case .magicItems:
            magicItems.append(shopItem)
        case .magicWeaponsAndArmor:
            magicWeaponsAndArmorItems.append(shopItem)
        case .petsAndSupplies:
            petsAndSuppliesItems.append(shopItem)
        case .poisons:
            poisonsItems.append(shopItem)
        case .potions:
            potionsItems.append(shopItem)
        case .weaponry:
            weaponryItems.append(shopItem)
        }
    }
    print(blacksmithItems)
    print(generalStoreItems)
}
