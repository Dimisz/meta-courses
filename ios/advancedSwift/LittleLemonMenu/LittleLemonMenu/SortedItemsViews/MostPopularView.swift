//
//  MostPopularView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct MostPopularView: View {
    let mostPopularItems = AllMenuItems().sortItemsByRatingFromHighestToLowest()
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView{
            Text("Most Popular")
                .font(.title)
                .bold()
                .frame(width: 330, alignment: .leading)

            LazyVGrid(columns: gridItemLayout, spacing: 20){
                ForEach(mostPopularItems, id: \.name){i in
                    NavigationLink(destination:MenuItemDetailsView(i)){
                        VStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 80, height: 80)
                            Text("\(i.name)")
                                .foregroundColor(Color.black)
                                .font(.headline)
                            Text("Rating: \(String(format: "%.2f", i.rating))")
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct MostPopularView_Previews: PreviewProvider {
    static var previews: some View {
        MostPopularView()
    }
}
