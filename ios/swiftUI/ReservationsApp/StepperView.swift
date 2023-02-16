//
//  StepperView.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct StepperView: View {
    @State private var value = 1
    @State var isShowing = true
    @State private var size: CGFloat = 0.1
    
    var body: some View {
        NavigationView{
            VStack{
                //LABEL
                Label("Menu", systemImage: "fork.knife")
                            .labelStyle(.titleAndIcon)
                Text("Current value: \(value)")
                //STEPPER
                Stepper("Number of guests?", value: $value, in: 1...20)
                //BUTTON
                Button(role: .destructive) {
                            print("do something!")
                } label: {
                            HStack {
                                Image(systemName: "trash")
                                Text("")
                            }
                }
                //TOGGLE
                Toggle(isOn: $isShowing) {
                    Text("Hello World")
                }
                //SLIDER
                VStack {
                    Text("Little Lemon").font(.system(size: size * 50))
                    Slider(value: $size)
                            
                }
                    .padding()
            }
                .padding()
                .navigationTitle("Reservation Form")
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
