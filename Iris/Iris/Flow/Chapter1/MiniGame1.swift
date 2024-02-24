//
//  MiniGame1.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame1: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    Image("chapter1-minigame1")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .blur(radius: blurAmount)
                    VStack {
                        Callout(text: "she knew her eyesight would get \nworse over time, leading to blindness.")
                            .position(x: geometry.size.width / 2, y: 925)
                    }
                    NextButton(destination: Popup1())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { timer in
                        withAnimation {
                            if blurAmount < 10.0 {
                                blurAmount += 1.0
                            } else {
                                timer.invalidate()
                            }
                        }
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    MiniGame1()
}
