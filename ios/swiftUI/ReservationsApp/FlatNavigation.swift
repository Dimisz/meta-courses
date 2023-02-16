//
//  FlatNavigation.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct FlatNavigation: View {
    var body: some View {
        TabView{
            Text("Make Reservation")
                .tabItem({
                Label("Reservation", systemImage: "note.text")
                })
            Text("Contact us")
                .tabItem({
                Label("Contacts", systemImage: "phone")
                })
        }
    }
}

struct FlatNavigation_Previews: PreviewProvider {
    static var previews: some View {
        FlatNavigation()
    }
}
