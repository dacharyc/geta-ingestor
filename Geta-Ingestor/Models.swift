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

struct ShopItem: Codable {
    var id: UUID
    var name: String
    var description: String
    var cost: Int
    var currencyUnit: CurrencyUnit
    var shopType: ShopType
    var businessAffluence: BusinessAffluence
}

enum CurrencyUnit: String, Codable {
    case copperPieces = "CP"
    case silverPieces = "SP"
    case goldPieces = "GP"
    case platinumPieces = "PP"
}

enum BusinessAffluence: String, Codable, CaseIterable {
    case poor = "Poor"
    case modest = "Modest"
    case affluent = "Affluent"
    
    enum ShortNames: String, Decodable {
        case poor = "p"
        case modest = "m"
        case affluent = "a"
    }
}

enum ShopType: String, Codable {
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
    
    enum ShortNames: String, CodingKey {
        case armorsmith = "arm"
        case blacksmith = "bla"
        case booksAndSpells = "bas"
        case bowyer = "bow"
        case clothing = "clo"
        case foodstuffs = "foo"
        case gemsAndJewelry = "gaj"
        case generalStore = "gs"
        case herbs = "her"
        case livestock = "liv"
        case magicItems = "mi"
        case magicWeaponsAndArmor = "mwa"
        case petsAndSupplies = "pas"
        case poisons = "poi"
        case potions = "pot"
        case weaponry = "wea"
    }
}
