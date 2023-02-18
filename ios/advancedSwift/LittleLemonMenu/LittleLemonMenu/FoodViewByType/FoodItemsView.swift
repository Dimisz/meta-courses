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
        NavigationView{
            ScrollView() {
                LazyVGrid(columns: gridItemLayout, spacing: 20){
                    ForEach(foodItems, id: \.name){i in
                        NavigationLink(destination:SingleItemView(i)){
                            VStack {
                                Image(systemName: "")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 70, height: 70)
                                    .background(Rectangle()
                                                .fill(Color.black)
                                                .frame(width: 70, height: 70))
                                Text("\(i.name)")
                          }
                     }
                    }
                }
            }
            .navigationTitle("Food")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FoodItemsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemsView()
    }
}
