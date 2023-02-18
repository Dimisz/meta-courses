//
//  FoodItems.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import Foundation

class MenuItem {
    let name: String
    let price: Double = Double.random(in: 5.00...20.00)
    let rating: Double = Double.random(in: 2.00...5.00)
    let ordered: Int = Int.random(in: 100...10000)
    let type: String
    init(name: String, type: String){
        self.name = name
        self.type = type
    }
}






