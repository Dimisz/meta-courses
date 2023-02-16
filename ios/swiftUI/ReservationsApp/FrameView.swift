//
//  FrameView.swift
//  ReservationsApp
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.red)
                .frame(width: 200, height: 50)
//                .background(Color.blue)
                .padding()
//            Spacer()
            HStack {
                Button("One"){}
//                Spacer()
                Button("Two"){}
//                Spacer()
                Button("Three"){}
            }
        }
        .frame(width: 300, alignment: .leading)
        .padding()
        
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
