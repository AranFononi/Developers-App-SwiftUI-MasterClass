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
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                Text("Developer App")
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .italic()
            }
            .offset(y: -218)
            
            Button {
                
            } label: {
                HStack {
                    Text("Learn".uppercased())
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
                .background(LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: .colorShadow, radius: 6)
            }
            .offset(y: 210)
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
