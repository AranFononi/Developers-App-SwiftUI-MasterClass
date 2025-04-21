//
//  CardView.swift
//  Developers App SwiftUI MasterClass
//
//  Created by Aran Fononi on 19/4/25.
//

import SwiftUI

struct CardView: View {
    var card : Card
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .italic()
            }
            .offset(y: -218)
            
            Button {
                playSound(sound: "sound-chime", type: "mp3")
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .tint(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(.title)
                        .fontWeight(.medium)
                        .tint(.white)
                } //: HSTack
                .padding(.vertical)
                .padding(.horizontal, 38)
                .background(LinearGradient(colors: card.gradientColors, startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: .colorShadow, radius: 6)
            }
            .offset(y: 210)
        } //: ZStack
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(.rect(cornerRadius: 16))
        .shadow(radius: 8)
    }
}

#Preview {
    CardView(card: cardData[1])
}
