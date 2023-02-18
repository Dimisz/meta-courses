//
//  SingleItemView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//
import SwiftUI


struct SingleItemView: View {
    private var menuItem: MenuItem
    
    init(_ menuItem:MenuItem) {
        self.menuItem = menuItem
    }
    var body: some View {
        Text(menuItem.name)
    }
}

struct SingleItemView_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemView(MenuItem(name: "hi", type: "food"))
    }
}
