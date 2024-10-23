//
//  ContentView.swift
//  Project-6-SwiftUI-animations
//
//  Created by Kevin Cuadros on 21/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.bouncy, value: animationAmount)
    }
}

#Preview {
    ContentView()
}
