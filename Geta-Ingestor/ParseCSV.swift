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
                let appropriateCaseShopItems = convertEnumsToAppropriateCase(decodedShopItems: decodedData)
                let numberOfAppropriateCaseShopItems = appropriateCaseShopItems.count
                if numberOfInputItems == numberOfAppropriateCaseShopItems {
                    print("Successfully adjusted enum cases for all \(numberOfInputItems) items")
                    convertDecoderStructsToShopItems(allShopItems: appropriateCaseShopItems)
                } else {
                    print("Failed to adjust enum cases for \(numberOfInputItems - numberOfAppropriateCaseShopItems) items")
                }
            }
        }
    } catch {
        print("Error reading contents of file at: \(thisFilepath)")
    }
}
