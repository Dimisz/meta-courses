//
//  StacksPractice.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct StacksPractice: View {
    var body: some View {
        NavigationView {
                    VStack {
                        ZStack {
                            HStack(spacing: 8) {
                                Text("Demo").scaledToFit().frame(
                                    width: 100, height: 100, alignment: .center)
                                VStack(spacing: 10) {
                                    Text("Little Lemon").font(.title)
                                    Text("Tomato Tortellini, Bottarga and Carbonara ").font(.title3)
                                        .multilineTextAlignment(.center)
                                }// :- VStack
                                    .padding()
                            }  // :- HStack
                            .padding()
                        }  // :- ZStack
                    }
                }
    }
}

struct StacksPractice_Previews: PreviewProvider {
    static var previews: some View {
        StacksPractice()
    }
}
