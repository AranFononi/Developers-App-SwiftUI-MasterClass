//
//  ContentView.swift
//  Developers App SwiftUI MasterClass
//
//  Created by Aran Fononi on 19/4/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    var cards: [Card] = cardData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                }
            } //: HStack
            .padding(20)
        } //: Scroll
    }
}

#Preview {
    ContentView()
}
