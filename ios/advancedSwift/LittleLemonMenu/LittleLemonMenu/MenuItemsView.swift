//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI


struct MenuItemsView: View {
    @State var showDetailsPopover = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                FoodItemsView().padding()
                DrinkItemsView().padding()
                DessertItemsView().padding()
            }
            .navigationTitle("Menu")
            .navigationBarItems(trailing:
                Button {
                    showDetailsPopover = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .foregroundColor(Color.accentColor)
                .popover(isPresented: $showDetailsPopover) {
                    MenuItemsOptionView(isPresented: $showDetailsPopover)
                }
            )
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
