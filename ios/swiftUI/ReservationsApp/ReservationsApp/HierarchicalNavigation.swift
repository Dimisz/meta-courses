//
//  HierarchicalNavigation.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct HierarchicalNavigation: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: Color.gray){
                Text("See gray color")
                    .font(.title)
            }
            .navigationTitle("Navigate the app")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HierarchicalNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalNavigation()
    }
}
