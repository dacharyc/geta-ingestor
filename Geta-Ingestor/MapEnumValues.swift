//
//  MapEnumValues.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/8/22.
//

import Foundation

func getBusinessAffluence(baShortString: String) -> BusinessAffluence {
    let shortName = BusinessAffluence.ShortNames(rawValue: baShortString)
    var ba = BusinessAffluence.poor
    if let unwrappedShortName = shortName {
        switch unwrappedShortName {
        case .poor:
            ba = BusinessAffluence.poor
        case .modest:
            ba = BusinessAffluence.modest
        case .affluent:
            ba = BusinessAffluence.affluent
        }
    }
    return ba
}

func getShopType(stShortString: String) -> ShopType {
    let shortName = ShopType.ShortNames(rawValue: stShortString)
    var st = ShopType.blacksmith
    if let unwrappedShortName = shortName {
        switch unwrappedShortName {
        case .armorsmith:
            st = .armorsmith
        case .blacksmith:
            st = .blacksmith
        case .booksAndSpells:
            st = .booksAndSpells
        case .bowyer:
            st = .bowyer
        case .clothing:
            st = .clothing
        case .foodstuffs:
            st = .foodstuffs
        case .gemsAndJewelry:
            st = .gemsAndJewelry
        case .generalStore:
            st = .generalStore
        case .herbs:
            st = .herbs
        case .livestock:
            st = .livestock
        case .magicItems:
            st = .magicItems
        case .magicWeaponsAndArmor:
            st = .magicWeaponsAndArmor
        case .petsAndSupplies:
            st = .petsAndSupplies
        case .poisons:
            st = .poisons
        case .potions:
            st = .potions
        case .weaponry:
            st = .weaponry
        }
    }
    return st
}
