//
//  ContentView.swift
//  Project-6-SwiftUI-animations
//
//  Created by Kevin Cuadros on 21/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingRed = false

        var body: some View {
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)

                if isShowingRed {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 200, height: 200)
                        .transition(.pivot)
                }
            }
            .onTapGesture {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
        }
}

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint

    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
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


//Button("Tap me") {
//    withAnimation(.spring(duration: 1, bounce: 0.5)){
//        animationAmount += 360
//    }
//}
//.padding(40)
//.background(.red)
//.foregroundStyle(.white)
//.clipShape(.circle)
//.rotation3DEffect(
//    .degrees(animationAmount),
//    axis: (x: 0, y: 1, z: 0)
//)



//@State private var enabled = false
//
//var body: some View {
//    
//    Button("Tap me") {
//        enabled.toggle()
//    }
//    .frame(width: 200, height: 200)
//    .background(enabled ? .blue : .red)
//    .foregroundStyle(.white)
//    .animation(.default, value: enabled)
//    .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//    .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
//}



//        Button("Tap me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .foregroundStyle(.white)
//        .animation(.default, value: enabled)
//        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//        .animation(.spring(duration: 1, bounce: 0.9), value: enabled)



//@State private var enabled = false
//@State private var dragAmount = CGSize.zero
//@State private var magnifyBy = 1.0
//
//var body: some View {
//    
//    LinearGradient(
//        colors: [.yellow, .red],
//        startPoint: .top,
//        endPoint: .bottomTrailing
//    )
//    .frame(width: 300, height: 200)
//    .clipShape(.rect(cornerRadius: 10))
//    .offset(dragAmount)
//    .scaleEffect(magnifyBy)
//    .gesture(
//        DragGesture()
//            .onChanged { dragAmount = $0.translation }
//            .onEnded { _ in
//                withAnimation(.bouncy) {
//                    dragAmount = .zero
//                }
//            }
//    )
//    .gesture(
//        MagnifyGesture()
//            .onChanged {
//                magnifyBy = $0.magnification
//            }
//    )
//   
//    .animation(.bouncy, value: dragAmount)
//    
//}


//let letters = Array("Kevin Cuadros")
//@State private var enabled = false
//@State private var dragAmount = CGSize.zero
//
//var body: some View {
//    
//    HStack(spacing: 0) {
//        ForEach(0..<letters.count, id: \.self) { num in
//            Text(String(letters[num]))
//                .padding(5)
//                .font(.title)
//                .background(enabled ? .blue : .red)
//                .offset(dragAmount)
//                .animation(
//                    .linear.delay(Double(num) / 20),
//                    value: dragAmount
//                )
//        }
//    }
//    .gesture(
//        DragGesture()
//            .onChanged { dragAmount = $0.translation }
//            .onEnded { _ in
//                dragAmount = .zero
//                enabled.toggle()
//            }
//    )
//    
//}


//@State private var isShowingRed = false
//
//var body: some View {
//    
//    VStack {
//        Button("Tap me"){
//            withAnimation {
//                isShowingRed.toggle()
//            }
//        }
//        
//        if  isShowingRed {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//                .transition(
//                    .asymmetric(insertion: .scale, removal: .opacity)
//                )
//        }
//        
//      
//    }
//    
//}
