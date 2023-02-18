//
//  MenuItemProtocol.swift
//  LittleLemonMenu
//
//  Created by VS on 19.02.23.
//

import Foundation

protocol MenuItemProtocol {
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var id: UUID { get }
    var price: Double { get }
    var rating: Double { get }
    var orderCount: Int { get }
    var ingredients: [Ingredient] { get set }
    
    // I have no idea why the requirements say it should have two price variable
    var priceAsInt: Int { get set }
}
