//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Anna Pavlova on 16.03.2024.
//

import XCTest
@testable import LittleLemonMenu

final class MenuItemTests: XCTestCase {

    func test_menuItem_init_title()  {
        let menuItem: MenuItem =
            MenuItem(price: 15.8, title: "Pasta test", menuCategory: .food, orderCount: 26, ingredients: [.pasta, .tomatoSauce])
        
        XCTAssertEqual(menuItem.title, "Pasta test")
    }

    func test_menuItem_ingredient() {
        let menuItem: MenuItem =
            MenuItem(price: 15.8, title: "Pasta test", menuCategory: .food, orderCount: 26, ingredients: [.pasta, .tomatoSauce])
        
        XCTAssertEqual(menuItem.ingredients, [.pasta, .tomatoSauce])
    }
}
