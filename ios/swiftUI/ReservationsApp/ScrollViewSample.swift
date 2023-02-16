//
//  ScrollViewSample.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct ScrollViewSample: View {
    let desserts = [
        "Apple Pie",
        "Carrot Cake",
        "Cheese Cake",
        "Ice Cream"
    ]
    
    var body: some View {
        ScrollView {
            ForEach(desserts, id: \.self){dessert in
                Text(dessert)
                    .font(.largeTitle)
            }
        }
        .padding()
    }
}

struct ScrollViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewSample()
    }
}
