//
//  SingleItemView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//
import SwiftUI


struct MenuItemDetailsView: View {
    private var menuItem: MenuItem
    
    init(_ menuItem:MenuItem) {
        self.menuItem = menuItem
    }
    var body: some View {
        VStack {
            Text(menuItem.name)
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            Image("littleLemonLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 400)
            VStack {
                Text("Price")
                    .font(.headline)
                Text("$\(menuItem.price)")
                Text("Ordered:")
                    .font(.headline)
                Text("$\(menuItem.ordered)")
                Text("Ingredients:")
                    .font(.headline)
                Text("Ingredient 1")
                Text("Ingredient 2")
                Text("Ingredient 3")
                Text("Ingredient 4")
            }
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(MenuItem(name: "hi", type: "food"))
    }
}
