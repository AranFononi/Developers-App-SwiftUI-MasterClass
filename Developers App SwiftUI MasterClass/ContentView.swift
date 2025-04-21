//
//  ContentView.swift
//  Developers App SwiftUI MasterClass
//
//  Created by Aran Fononi on 19/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 5) { item in
                    //CardView()
                }
            } //: HStack
            .padding(20)
        } //: Scroll
    }
}

#Preview {
    ContentView()
}
