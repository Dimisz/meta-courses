//
//  ReservationCalendarExercise.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct ReservationCalendarExercise: View {
    @State var reservationDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ){}
                Button(action: {print("Do something")}){
                    HStack{
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendarExercise_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendarExercise()
    }
}
