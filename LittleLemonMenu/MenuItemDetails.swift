//
//  MenuItemDetails.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 27.02.2024.
//

import SwiftUI

protocol DetailMenuItem {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orderCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, DetailMenuItem {
    var id: UUID = UUID()
    
    var price: Double
    
    var title: String
    
    var menuCategory: MenuCategory
    
    var orderCount: Int
    
    var ingredients: [Ingredient]
    
}

struct MenuItemDetail: View {
    let menuItem: MenuItem
    
  
    var body: some View {
        ZStack {
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 420)
                
                Text("Price:")
                    .fontWeight(.bold)
                Text("\(menuItem.price.string())")
                    .padding(.bottom, 1.0)
                    
                Text("Ordered:")
                    .fontWeight(.bold)
                Text("\(menuItem.orderCount)")
                    .padding(.bottom, 1.0)
                
                Text("Ingredients:")
                    .fontWeight(.bold)
                ForEach(menuItem.ingredients, id: \.self) { ingredient in
                                    Text(ingredient.rawValue)
                                }
                
                }
            
            }
            .navigationTitle(menuItem.title)
        }
    }
    


struct MenuItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetail(menuItem: MenuItem.mockData[1] )
    }
}
