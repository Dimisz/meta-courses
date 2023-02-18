//
//  SortedAlphabeticallyView.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct SortedAlphabeticallyView: View {
    let sortedAlphabetically = AllMenuItems().sortItemsInAlphabeticOrder()
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView{
            Text("Sorted Alphabetically")
                .font(.title)
                .bold()
                .frame(width: 330, alignment: .leading)

            LazyVGrid(columns: gridItemLayout, spacing: 20){
                ForEach(sortedAlphabetically, id: \.id){i in
                    NavigationLink(destination:MenuItemDetailsView(i)){
                        VStack {
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 80, height: 80)
                            Text("\(i.title)")
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

struct SortedAlphabeticallyView_Previews: PreviewProvider {
    static var previews: some View {
        SortedAlphabeticallyView()
    }
}
