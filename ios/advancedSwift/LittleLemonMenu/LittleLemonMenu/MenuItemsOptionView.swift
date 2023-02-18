//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var isPresented: Bool
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Selected Categories")){
                    NavigationLink(destination: FoodItemsView()){
                        Text("Food")
                    }
                    NavigationLink(destination: DrinkItemsView()){
                        Text("Drink")
                    }
                    NavigationLink(destination: DessertItemsView()){
                        Text("Dessert")
                    }
                }
                Section(header: Text("Sort By")){
                    NavigationLink(destination: MostPopularView()){
                        Text("Most Popular")
                    }
                    NavigationLink(destination: SortedFromCheapestToExpensiveView()){
                        Text("Price $-$$$")
                    }
                    NavigationLink(destination: SortedAlphabeticallyView()){
                        Text("A - Z")
                    }
                }
            }
            .navigationTitle("Filter")
            .navigationBarItems(trailing:
                Button("Done") {
                    isPresented = false
                }
                .foregroundColor(Color.accentColor)
            )
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView(isPresented: .constant(true))
    }
}
