//
//  FoodItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct FoodItemsView: View {
    
    let foodItems = AllMenuItems().foods

    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack{
            Text("Food")
                .font(.title)
                .bold()
                .frame(width: 330, alignment: .leading)

            LazyVGrid(columns: gridItemLayout, spacing: 20){
                ForEach(foodItems, id: \.name){i in
                    NavigationLink(destination:MenuItemDetailsView(i)){
                        VStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 80, height: 80)
                            Text("\(i.name)")
                                .foregroundColor(Color.black)
                                .font(.headline)
                        }
                        }
                }
            }
        }
        .padding()
    }
}

struct FoodItemsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemsView()
    }
}
