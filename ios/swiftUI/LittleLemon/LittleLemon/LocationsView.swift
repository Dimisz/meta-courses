//
//  LocationsView.swift
//  LittleLemon
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    
    
    var body: some View {
        NavigationView {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            Text(model.displayingReservationForm ? "Reservation Details" :"Select a Location") // 2
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
                List {
                    ForEach(model.restaurants, id: \.phoneNumber){i in
                        NavigationLink(destination: ReservationForm(i)){
                            RestaurantView(
                                RestaurantLocation(city: i.city, neighborhood: i.neighborhood, phoneNumber: i.phoneNumber)
                            )
                            //print(i)// 3
                        }
                        //.onChange(of: restaurant, perform: {print($restaurant)})
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
        }
        .padding(.top, -10)
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}
