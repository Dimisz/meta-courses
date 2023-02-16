//
//  LayoutLecture.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct LayoutLecture: View {
    @State var name = ""
    @State var password = ""
    var body: some View {
        VStack {
                VStack(spacing: 10){
                    TextField("Username", text: $name, prompt: Text("Please enter your username"))
                    TextField("Password", text: $password, prompt: Text("Please enter your password"))
                }
                HStack(spacing: 20) {
                    Button("Login", action: {})
                    Button("Forgot password", action: {})
                }
            }
            .padding()
    }
}

struct LayoutLecture_Previews: PreviewProvider {
    static var previews: some View {
        LayoutLecture()
    }
}
