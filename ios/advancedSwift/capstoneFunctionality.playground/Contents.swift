import UIKit

class MenuItem {
    let name: String
    let price: Double = Double.random(in: 5.00...20.00)
    let rating: Double = Double.random(in: 2.00...5.00)
    let type: String
    init(name: String, type: String){
        self.name = name
        self.type = type
    }
}

let foodItems = [
    MenuItem(name: "Food 1", type: "food"),
    MenuItem(name: "Food 2", type: "food"),
    MenuItem(name: "Food 3", type: "food"),
    MenuItem(name: "Food 4", type: "food"),
    MenuItem(name: "Food 5", type: "food"),
    MenuItem(name: "Food 6", type: "food"),
    MenuItem(name: "Food 7", type: "food"),
    MenuItem(name: "Food 8", type: "food"),
    MenuItem(name: "Food 9", type: "food"),
    MenuItem(name: "Food 10", type: "food"),
    MenuItem(name: "Food 11", type: "food"),
    MenuItem(name: "Food 12", type: "food"),
]

let drinkItems = [
    MenuItem(name: "Drink 1", type: "drink"),
    MenuItem(name: "Drink 2", type: "drink"),
    MenuItem(name: "Drink 3", type: "drink"),
    MenuItem(name: "Drink 4", type: "drink"),
    MenuItem(name: "Drink 5", type: "drink"),
    MenuItem(name: "Drink 6", type: "drink"),
    MenuItem(name: "Drink 7", type: "drink"),
    MenuItem(name: "Drink 8", type: "drink"),
]

let dessertItems = [
    MenuItem(name: "Dessert 1", type: "dessert"),
    MenuItem(name: "Dessert 2", type: "dessert"),
    MenuItem(name: "Dessert 3", type: "dessert"),
    MenuItem(name: "Dessert 4", type: "dessert")
]

struct MenuItems {
    let foods: [MenuItem] = foodItems
    let drinks: [MenuItem] = drinkItems
    let desserts: [MenuItem] = dessertItems
    
    func getAllMenuItems() -> [MenuItem] {
        var allItems: [MenuItem] = foods
        allItems.append(contentsOf: drinks)//.append(contentsOf: desserts)
        allItems.append(contentsOf: desserts)
        return allItems
    }
    
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
}

let a = MenuItems()
//a.sortItemsByPriceFromLowestToHighest()
a.sortItemsByRatingFromHighestToLowest()

