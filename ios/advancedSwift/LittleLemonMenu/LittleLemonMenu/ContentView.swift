//
//  ContentView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            FoodItemsView()
            DrinkItemsView()
            DessertItemsView()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
