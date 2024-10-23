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
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            Spacer()
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        
    }
}

#Preview {
    ContentView()
}


//Button("Tap me") {
//    animationAmount += 1
//}
//.padding(50)
//.background(.red)
//.foregroundStyle(.white)
//.clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//.animation(
//    .spring(duration: 1, bounce: 0.5)
//    .delay(1)
//    .repeatCount(3, autoreverses: true),
//    value: animationAmount
//)



//Button("Tap me") {
//    animationAmount += 1
//}
//.padding(50)
//.background(.red)
//.foregroundStyle(.white)
//.clipShape(.circle)
//.overlay(
//    Circle()
//        .stroke(.red)
//        .scaleEffect(animationAmount)
//        .opacity(2 - animationAmount)
//        .animation(
//            .easeOut(duration: 1)
//            .repeatForever(autoreverses: false),
//            value: animationAmount
//        )
//)
//.onAppear {
//    animationAmount = 2
//}


//return VStack {
//    Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
//    Spacer()
//    Button("Tap me") {
//        animationAmount += 1
//    }
//    .padding(40)
//    .background(.red)
//    .foregroundStyle(.white)
//    .clipShape(.circle)
//    .scaleEffect(animationAmount)
//}
