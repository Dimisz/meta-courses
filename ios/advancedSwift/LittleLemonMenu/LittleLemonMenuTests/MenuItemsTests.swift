//
//  MenuItemsTests.swift
//  LittleLemonMenuTests
//
//  Created by VS on 19.02.23.
//

import XCTest
@testable import LittleLemonMenu

class MenuItemsTests: XCTestCase {
    func test_menuItemTitle_afterInit_titleEqualsTestTitle() {
        let menuItem = MenuItem(title: "Test Title", menuCategory: MenuCategory.food)
        XCTAssert(menuItem.title == "Test Title")
    }
    
    func test_menuItemIngredients_afterInit_ingredientsEqualSpinachAndBroccoli() {
        var menuItem = MenuItem(title: "Test Title", menuCategory: MenuCategory.food)
        menuItem.ingredients = [Ingredient.spinach, Ingredient.broccoli]
        XCTAssert(menuItem.ingredients == [Ingredient.spinach, Ingredient.broccoli])
    }
}
