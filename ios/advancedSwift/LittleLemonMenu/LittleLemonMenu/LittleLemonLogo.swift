//
//  LittleLemonLogo.swift
//  LittleLemonMenu
//
//  Created by VS on 18.02.23.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image("littleLemonLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)

    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}
