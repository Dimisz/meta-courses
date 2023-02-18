//
//  TestingSampleTests.swift
//  TestingSampleTests
//
//  Created by VS on 18.02.23.
//

import XCTest
@testable import TestingSample

class TestingSampleTests: XCTestCase {

    func test_recipeOrderCount_init_orderCountEqualsZero(){
        let recipe = Recipe()
        XCTAssert(recipe.orderCount == 0)
    }
    func test_recipeOrderCount_incrementOrderCount_orderCountEqualsOne(){
        var recipe = Recipe()
        recipe.incrementOrderCount()
        XCTAssert(recipe.orderCount == 1)
    }
    
    func test_calculateTotal_givenEmptyArray_returnsZero(){
        let items: [CheckoutItem] = []
        XCTAssert(calculateTotal(items: items, localTaxPercent: 10) == 0)
    }
    
    func test_calculateTotal_givenTwoItemsWithPrice100EachAnd5PercentTax_returns210(){
        let item = CheckoutItem(name: "Some meal", price: 100)
        let items:[CheckoutItem] = [item, item]
        XCTAssert(calculateTotal(items: items, localTaxPercent: 5) == 210)
    }

}
