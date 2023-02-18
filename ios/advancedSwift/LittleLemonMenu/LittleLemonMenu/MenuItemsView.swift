//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct MenuItemsView: View {
    
    let drinkItems = AllMenuItems().drinks
    let dessertItems = AllMenuItems().desserts
    
    
    
    var body: some View {
        TabView{
            FoodItemsView()
            .tabItem({
            Label("Filter", systemImage: "house")
            })
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
