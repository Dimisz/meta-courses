//
//  Checkout.swift
//  TestingSample
//
//  Created by VS on 18.02.23.
//
import Foundation

struct CheckoutItem {
    let name: String
    let price: Int
}

func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    if items.isEmpty{ return 0 }
        
    let itemsTotal = items.reduce(0){$0 + $1.price}
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
