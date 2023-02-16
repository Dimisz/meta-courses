//
//  Gestures.swift
//  LittleLemonMenu
//
//  Created by VS on 16.02.23.
//

import SwiftUI

struct Gestures: View {
    @State private var flag = false
      var body: some View {
          Text("Tap Me")
              .font(.largeTitle)
              .foregroundColor(.white)
              .padding(15)
              .background(flag ? Color.green : Color.yellow)
              .onTapGesture {
                  flag.toggle()
              }
      }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Gestures()
    }
}
