//
//  MiniGame2.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame2: View {
    @State private var touched: [Bool] = [false, false, false, false, false]
    
    var canProceed: Bool {
        touched.allSatisfy { $0 }
    }
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    VStack (alignment: .center, spacing: 40) {
                        MiniGame2Square(touched: $touched, index: 0, width: 745, height: 312, image: "chapter1-minigame2-1")
                        HStack(spacing: 40) {
                            MiniGame2Square(touched: $touched, index: 1, width: 265, height: 284, image: "chapter1-minigame2-2")
                            MiniGame2Square(touched: $touched, index: 2, width: 451, height: 284, image: "chapter1-minigame2-3")
                        }
                        HStack(spacing: 40) {
                            MiniGame2Square(touched: $touched, index: 3, width: 558, height: 288, image: "chapter1-minigame2-4")
                            MiniGame2Square(touched: $touched, index: 4, width: 158, height: 288, image: "chapter1-minigame2-5")
                        }
                    }.padding()
                    if canProceed {
                        NextButton(destination: Chapter1Ending())
                            .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                    }
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    MiniGame2()
}
