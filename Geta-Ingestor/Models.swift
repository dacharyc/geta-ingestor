//
//  Models.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/7/22.
//

import Foundation

struct ShopItemDecoderStruct: Codable {
    // var id: UUID
    var name: String
    var description: String
    var cost: Int
    var currencyUnit: String
    var shopType: String
    var businessAffluence: String
    
    private enum CodingKeys: Int, CodingKey {
        case name = 0
        case description = 1
        case cost = 2
        case currencyUnit = 3
        case shopType = 4
        case businessAffluence = 5
    }
}

struct ShopItem {
    var id: UUID
    var name: String
    var description: String
    var cost: Int
    var currencyUnit: CurrencyUnit
}

enum CurrencyUnit: String {
    case copperPieces = "CP"
    case silverPieces = "SP"
    case goldPieces = "GP"
    case platinumPieces = "PP"
}

enum BusinessAffluence: String {
    case poor = "Poor"
    case modest = "Modest"
    case affluent = "Affluent"
}

enum ShopType: String {
    case armorsmith = "Armorsmith"
    case blacksmith = "Blacksmith"
    case booksAndSpells = "Books and Spells"
    case bowyer = "Bowyer"
    case clothing = "Clothes"
    case foodstuffs = "Food"
    case gemsAndJewelry = "Gems and Jewelry"
    case generalStore = "General Store"
    case herbs = "Herbs"
    case livestock = "Livestock"
    case magicItems = "Magic Items"
    case magicWeaponsAndArmor = "Magic Weapons and Armor"
    case petsAndSupplies = "Pets And Supplies"
    case poisons = "Poisons"
    case potions = "Potions"
    case weaponry = "Weapons"
}
