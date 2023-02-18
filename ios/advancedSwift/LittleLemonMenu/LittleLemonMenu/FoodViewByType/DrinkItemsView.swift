//
//  DrinkItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct DrinkItemsView: View {
    
    let drinkItems = AllMenuItems().drinks

    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView() {
                LazyVGrid(columns: gridItemLayout, spacing: 20){
                    ForEach(drinkItems, id: \.name){i in
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
            .navigationTitle("Drinks")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DrinkItemsView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItemsView()
    }
}
