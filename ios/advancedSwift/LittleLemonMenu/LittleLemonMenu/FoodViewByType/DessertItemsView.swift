//
//  DessertItemsView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct DessertItemsView: View {
    
    let dessertItems = AllMenuItems().desserts

    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack{
            Text("Desserts")
                .font(.title)
                .bold()
                .frame(width: 330, alignment: .leading)

            LazyVGrid(columns: gridItemLayout, spacing: 20){
                ForEach(dessertItems, id: \.name){i in
                    NavigationLink(destination: MenuItemDetailsView(i)){
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

struct DessertItemsView_Previews: PreviewProvider {
    static var previews: some View {
        DessertItemsView()
    }
}
