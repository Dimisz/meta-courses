//
//  Recipe.swift
//  TestingSample
//
//  Created by VS on 18.02.23.
//

import Foundation

struct Recipe {
    var orderCount = 0
    mutating func incrementOrderCount(){
        orderCount += 1
    }
}
