//
//  SortedFromCheapestToExpensiveView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct SortedFromCheapestToExpensiveView: View {
    let sortedByPrice = AllMenuItems().sortItemsByPriceFromLowestToHighest()
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView{
            Text("Sorted by price")
                .font(.title)
                .bold()
                .frame(width: 330, alignment: .leading)

            LazyVGrid(columns: gridItemLayout, spacing: 20){
                ForEach(sortedByPrice, id: \.id){i in
                    NavigationLink(destination:MenuItemDetailsView(i)){
                        VStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 80, height: 80)
                            Text("\(i.title)")
                                .foregroundColor(Color.black)
                                .font(.headline)
                            Text("Price: $\(String(format: "%.2f", i.price))")
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct SortedFromCheapestToExpensiveView_Previews: PreviewProvider {
    static var previews: some View {
        SortedFromCheapestToExpensiveView()
    }
}
