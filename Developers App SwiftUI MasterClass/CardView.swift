//
//  CardView.swift
//  Developers App SwiftUI MasterClass
//
//  Created by Aran Fononi on 19/4/25.
//

import SwiftUI

struct CardView: View {
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    var body: some View {
        ZStack {
            Text("Card".uppercased())
        } //: ZStack
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom))
        .clipShape(.rect(cornerRadius: 16))
        .shadow(radius: 8)
    }
}

#Preview {
    CardView()
}
