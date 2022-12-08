//
//  ParseCSV.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/7/22.
//

import Foundation
import CodableCSV

func decodeCSV(thisFilepath: URL) {
    var data: Data?
    do {
        data = try Data(contentsOf: thisFilepath)
        if let validData = data {
            print("Successfully read contents of file into data: \(validData)")
            let decoder = CSVDecoder()
            let decodingResult = Result {try decoder.decode([ShopItemDecoderStruct].self, from: validData)}
            switch decodingResult {
            case .failure(let error):
                print("Error decoding result: \(error)")
            case .success(let decodedData):
                let numberOfInputItems = decodedData.count
                print("Number of decoded ShopItemDecoderStructs: \(numberOfInputItems)")
                let currencyUnitSanitizedShopItems = sanitizeCurrencyUnits(decodedShopItems: decodedData)
                let numberOfCurrencyUnitSanitizedShopItems = currencyUnitSanitizedShopItems.count
                if numberOfInputItems == numberOfCurrencyUnitSanitizedShopItems {
                    print("Successfully sanitized the currency units for all \(numberOfInputItems) items")
                    let sanitizedShopTypeInputs = sanitizeShopTypes(allshopItems: currencyUnitSanitizedShopItems)
                    separateItemsByType(allShopItems: currencyUnitSanitizedShopItems)
                } else {
                    print("Failed to sanitize currency units for \(numberOfInputItems - numberOfCurrencyUnitSanitizedShopItems) items")
                }
            }
        }
    } catch {
        print("Error reading contents of file at: \(thisFilepath)")
    }
}
