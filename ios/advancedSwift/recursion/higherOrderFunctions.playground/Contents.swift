import UIKit

let originalPrices = [2, 5, 6, 12, 5, 20]

func convertPrices(originalPrices: [Int],
                   conversionClosure: (_ price: Int) -> Int) -> [Int] {
    var convertedPrices = [Int]()
    for originalPrice in originalPrices {
        let convertedPrice = conversionClosure(originalPrice)
        convertedPrices.append(convertedPrice)
    }
    return convertedPrices
}

let conversion = convertPrices(originalPrices: originalPrices,
                               conversionClosure: {$0 * 3})
print(originalPrices)
print(conversion)
