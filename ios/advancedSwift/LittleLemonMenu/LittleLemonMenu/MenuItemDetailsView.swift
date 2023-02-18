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
        ScrollView {
            Text(menuItem.title)
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
                Text("$\(String(format: "%.2f", menuItem.price))")
                    .padding(.bottom, 10)
                Text("Ordered:")
                    .font(.headline)
                Text("\(menuItem.orderCount)")
                    .padding(.bottom, 10)
                Text("Ingredients:")
                    .font(.headline)
                ForEach(menuItem.ingredients, id: \.rawValue){i in
                    Text(i.rawValue)
                }
            }
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(MenuItem(title: "hi", menuCategory: MenuCategory.food))
    }
}
