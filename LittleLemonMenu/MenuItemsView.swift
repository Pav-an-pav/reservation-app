//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 27.02.2024.
//

import SwiftUI

struct ItemView: View {
    var menuItems: MenuItem
    var body: some View {
        NavigationLink (
            destination: MenuItemDetail(menuItem: menuItems),
            label: {
                VStack{
                    Rectangle()
                        .frame(width: 120, height: 100)
                        .foregroundColor(.black)
                    Text(menuItems.title)
                        .foregroundColor(.black)
                }
            })
    }
}

struct ListMenuItem: View {
    private let columns = Array(
        repeating: GridItem(.flexible(), spacing: 1),
        count: 3)
    let title: String
    let items: [MenuItem]
    
    var body: some View {
        VStack {
            if items.count != 0 {
                Text("\(title)")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                }
            
            LazyVGrid(columns: columns) {
                ForEach (items) { menuItem in ItemView( menuItems: menuItem)
                }
            }
        }
    }
}

struct MenuItemsView: View {
    
    @State private var showSheet: Bool = false
    @StateObject var viewModel = MenuViewViewModel()
    
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    
                    ListMenuItem(title: MenuCategory.food.rawValue, items: viewModel.menuItems.filter {$0.menuCategory == .food })
                    ListMenuItem(title: MenuCategory.drink.rawValue, items: viewModel.menuItems.filter {$0.menuCategory == .drink })
                    ListMenuItem(title: MenuCategory.dessert.rawValue, items: viewModel.menuItems.filter {$0.menuCategory == .dessert })
                        .navigationTitle("Menu")
                }
                
                .toolbar {
                    Button(action:
                            {
                        showSheet.toggle()
                    }
                    , label: {Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.blue)
                    })
                }
                .sheet(isPresented: $showSheet, content: {
                    MenuItemsOptionView(showSheet: $showSheet, viewModel: viewModel)
                })
            }
        }
    }
}
    
struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
