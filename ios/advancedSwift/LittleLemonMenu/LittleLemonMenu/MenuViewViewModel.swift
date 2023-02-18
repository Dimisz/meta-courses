//
//  FoodItems.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import Foundation

let foodItems = [
    MenuItem(title: "Food 1", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 2", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 3", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 4", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 5", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 6", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 7", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 8", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 9", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 10", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 11", menuCategory: MenuCategory.food),
    MenuItem(title: "Food 12", menuCategory: MenuCategory.food),
]

let drinkItems = [
    MenuItem(title: "Drink 1", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 2", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 3", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 4", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 5", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 6", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 7", menuCategory: MenuCategory.drink),
    MenuItem(title: "Drink 8", menuCategory: MenuCategory.drink),
]

let dessertItems = [
    MenuItem(title: "Dessert 1", menuCategory: MenuCategory.dessert),
    MenuItem(title: "Dessert 2", menuCategory: MenuCategory.dessert),
    MenuItem(title: "Dessert 3", menuCategory: MenuCategory.dessert),
    MenuItem(title: "Dessert 4", menuCategory: MenuCategory.dessert)
]

struct AllMenuItems {
    let foods: [MenuItem] = foodItems
    let drinks: [MenuItem] = drinkItems
    let desserts: [MenuItem] = dessertItems
    
    func getAllMenuItems() -> [MenuItem] {
        var allItems: [MenuItem] = foods
        allItems.append(contentsOf: drinks)
        allItems.append(contentsOf: desserts)
        return allItems
    }
    
    // helper function
    func sortByPrice(a: MenuItem, b: MenuItem) -> Bool {
        return a.price < b.price
    }
    
    func sortItemsByPriceFromLowestToHighest() -> [MenuItem] {
        let items = getAllMenuItems()
        let sortedItemsByPrice = items.sorted(by: sortByPrice)
//        for i in sortedItemsByPrice {
//            print("\(i.price) : \(i.name)")
//        }
//        print(sortedItemsByPrice.count)
        return sortedItemsByPrice
    }
    
    func sortByRating(a: MenuItem, b: MenuItem) -> Bool {
        return a.rating > b.rating
    }
    
    func sortItemsByRatingFromHighestToLowest() -> [MenuItem] {
        let items = getAllMenuItems()
        let sortedItemsByRating = items.sorted(by: sortByRating)
//        for i in sortedItemsByRating {
//            print("\(i.rating) : \(i.name)")
//        }
//        print(sortedItemsByRating.count)
        return sortedItemsByRating
    }
    
    func sortByName(a: MenuItem, b: MenuItem) -> Bool {
        return a.title < b.title
    }
    
    func sortItemsInAlphabeticOrder() -> [MenuItem] {
        let items = getAllMenuItems()
        let sortedItemsByName = items.sorted(by: sortByName)
//        for i in sortedItemsByRating {
//            print("\(i.rating) : \(i.name)")
//        }
//        print(sortedItemsByRating.count)
        return sortedItemsByName
    }
}
