//
//  FoodItems.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import Foundation

//Task 4 states MenuItem should be a struct
//Task 7 states MenuItem should be a class
// so it's a struct here
// i leave a commented out init block
// so just change 'struct' keyword to 'class' and uncomment the init block
struct MenuItem: Identifiable, MenuItemProtocol {
    let title: String
    let menuCategory: MenuCategory
    let id: UUID = UUID()
    let price: Double = Double.random(in: 5.00...20.00)
    let rating: Double = Double.random(in: 2.00...5.00)
    let orderCount: Int = Int.random(in: 100...10000)
    var ingredients: [Ingredient] = Ingredient.allCases
    
    // I have no idea why the requirements say it should have two price variable
    var priceAsInt: Int = Int.random(in: 3...50)
    
//    init(title: String, menuCategory: MenuCategory){
//        self.title = title
//        self.menuCategory = menuCategory
//    }
}






