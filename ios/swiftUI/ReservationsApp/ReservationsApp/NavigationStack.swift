//
//  NavigationStack.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct NavigationStack: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Select your preferred Menu")
                NavigationLink(destination: Color.green){
                    Text("Bistro Menu")
                        .font(.title)
                        .foregroundColor(.green)
                }
                NavigationLink(destination: Color.yellow){
                    Text("Takeaway Menu")
                        .font(.title)
                        .foregroundColor(.yellow)
                }
            }
            .navigationTitle("Little Lemon Menus")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack()
    }
}
