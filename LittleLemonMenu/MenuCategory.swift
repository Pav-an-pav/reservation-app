//
//  MenuCategory.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 04.03.2024.
//

import Foundation

enum SortBy: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetAZ = "A-Z"
}

enum MenuCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}
