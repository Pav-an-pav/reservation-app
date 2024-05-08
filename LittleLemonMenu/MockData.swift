//
//  File.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 12.03.2024.
//

import Foundation

extension MenuItem {
    static let mockData: [MenuItem] = [
        MenuItem (price: 19.9, title: "Food 1", menuCategory: .food, orderCount: 203,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 23.5 , title: "Food 2", menuCategory: .food, orderCount: 114,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 12.3, title: "Food 3", menuCategory: .food, orderCount: 121,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 5.3, title: "Food 4", menuCategory: .food, orderCount: 137,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 23.5, title: "Food 5", menuCategory: .food, orderCount: 168,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 7.8, title: "Food 6", menuCategory: .food, orderCount: 145,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 19.9, title: "Food 7", menuCategory: .food, orderCount: 154,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 23.5 ,title: "Food 8", menuCategory: .food, orderCount: 273,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 12.3, title: "Food 9", menuCategory: .food, orderCount: 252,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 5.3, title: "Food 10", menuCategory: .food, orderCount: 261,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 23.5, title: "Food 11", menuCategory: .food, orderCount: 101,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 7.8, title: "Food 12", menuCategory: .food, orderCount: 180,
              ingredients: [.broccoli, .carrot, .spinach, .tomatoSauce, .pasta]),
        MenuItem (price: 19.9, title: "Drink 1", menuCategory: .drink, orderCount: 343,
              ingredients: [.milk, .berry]),
        MenuItem (price: 23.5 , title: "Drink 2", menuCategory: .drink, orderCount: 312,
              ingredients: [.milk, .berry]),
        MenuItem (price: 12.3, title: "Drink 3", menuCategory: .drink, orderCount: 267,
              ingredients: [.milk, .berry]),
        MenuItem (price: 5.3, title: "Drink 4", menuCategory: .drink, orderCount: 248,
              ingredients: [.milk, .berry]),
        MenuItem (price: 23.5, title: "Drink 5", menuCategory: .drink, orderCount: 317,
              ingredients: [.milk, .juice]),
        MenuItem (price: 7.8, title: "Drink 6", menuCategory: .drink, orderCount: 253,
              ingredients: [.milk, .juice]),
        MenuItem (price: 19.9, title: "Drink 7", menuCategory: .drink, orderCount: 195,
              ingredients: [.milk]),
        MenuItem (price: 23.5 , title: "Drink 8", menuCategory: .drink, orderCount: 182,
              ingredients: [.juice]),
        MenuItem (price: 12.3, title: "Dessert 1", menuCategory: .dessert, orderCount: 174,
              ingredients: [.milk, .berry, .cake]),
        MenuItem (price: 5.3, title: "Dessert 2", menuCategory: .dessert, orderCount: 161,
              ingredients: [.berry]),
        MenuItem (price: 23.5, title: "Dessert 3", menuCategory: .dessert, orderCount: 159,
              ingredients: [.cake]),
        MenuItem (price: 7.8, title: "Dessert 4", menuCategory: .dessert, orderCount: 148,
              ingredients: [.cake, .berry])
    ]
}
extension Double {
    func string(maximumFractionDigits: Int = 2) -> String {
        let s = String(format: "%.\(maximumFractionDigits)f", self)
        for i in stride(from: 0, to: -maximumFractionDigits, by: -1) {
            if s[s.index(s.endIndex, offsetBy: i - 1)] != "0" {
                return String(s[..<s.index(s.endIndex, offsetBy: i)])
            }
        }
        return String(s[..<s.index(s.endIndex, offsetBy: -maximumFractionDigits - 1)])
    }
}
