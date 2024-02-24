//
//  MeetDog.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MeetDog: View {
    @State private var showContent = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Image("chapter2-meet")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    VStack {
                        Callout(text: "she decided to welcome a life companion: \na guide dog to assist on her journey.")
                            .position(x: geometry.size.width / 2, y: 925)
                    }
                    
                    NextButton(destination: NameDog())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
                .overlay(
                    Color.black.opacity(showContent ? 0 : 1)
                        .animation(.easeInOut(duration: 3))
                        .ignoresSafeArea()
                )
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        showContent = true
                    }
                    Constants.shared.play2()
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    MeetDog()
}
