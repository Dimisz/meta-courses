//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct MenuItemsView: View {
    
    let allMenuItems = AllMenuItems().getAllMenuItems()
    
    
    
    var body: some View {
        ScrollView {
            ForEach(allMenuItems, id: \.name){i in
                Text("\(i.name)")
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
