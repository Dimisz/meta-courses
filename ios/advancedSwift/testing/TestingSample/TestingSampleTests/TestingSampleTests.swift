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

}
