//
//  ReservationsForm.swift
//  ReservationsApp
//
//  Created by VS on 15.02.23.
//

import SwiftUI

struct ReservationsForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type your name here...", text: $customerName,
                      onEditingChanged: {status in
                print(status)
            })
            .onChange(of: customerName, perform: {currentValue in
                print(currentValue)
            })
            .onSubmit({print("Submitted")})
            .padding()
        }
    }
}

struct ReservationsForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationsForm()
    }
}
