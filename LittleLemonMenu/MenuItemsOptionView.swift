//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by Anna Pavlova on 27.02.2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @Binding var showSheet: Bool
    @ObservedObject var viewModel:MenuViewViewModel
    
    let categories = MenuCategory.allCases.map { $0 }
    let sorted = SortBy.allCases.map { $0 }
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    Section ( header: Text("selected categories")) {
                        ForEach(categories, id:\.self) { category in
                            Text(category.rawValue)
                                .onTapGesture {
                                    viewModel.filteredByCategory(category)
                                    showSheet = false
                                }
                        }
                    }
                    Section ( header: Text("sort by")) {
                        ForEach( sorted, id:\.self) { sort in
                            Text(sort.rawValue)
                                .onTapGesture {
                                    viewModel.sortMenu(sortBy: sort)
                                    showSheet = false
                                }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Filter")
                .toolbar {
                    Button (action: {
                        showSheet = false
                        }, label: {
                            Text("Done")
                                .fontWeight(.bold)
                                .padding(10)
                        })
                    }
                
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView(showSheet: .constant(true), viewModel: MenuViewViewModel())
    }
}
