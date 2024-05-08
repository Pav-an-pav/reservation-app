//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 06.03.2024.
//

import Foundation

class MenuViewViewModel: ObservableObject {
/*
    var foodMenuItem: [MenuItem]
    var drinkMenuItem: [MenuItem]
    var dessertMenuItem: [MenuItem]
*/
    @Published var menuItems: [MenuItem] = MenuItem.mockData
    
 /*
    init(_ foodMenuItem: [MenuItem], _ drinkMenuItem: [MenuItem], _ dessertMenuItem: [MenuItem]) {
        self.foodMenuItem = MenuItem.mockData.filter { $0.menuCategory == .food}
        self.drinkMenuItem = MenuItem.mockData.filter { $0.menuCategory == .drink}
        self.dessertMenuItem = MenuItem.mockData.filter { $0.menuCategory == .dessert}
  }
  */
    
    func sortMenu (sortBy: SortBy) {
        switch sortBy {
        case .mostPopular:
            menuItems.sort { $0.orderCount < $1.orderCount }
        case .price:
            menuItems.sort { $0.price < $1.price }
        case .alphabetAZ:
            menuItems.sort { $0.title < $1.title }
        }
    }
    
    func filteredByCategory (_ category: MenuCategory) {
        menuItems = MenuItem.mockData.filter { $0.menuCategory == category}
    }
}

