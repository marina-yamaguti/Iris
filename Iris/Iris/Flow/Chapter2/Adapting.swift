//
//  Adapting.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Adapting: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 60) {
                            Text("with time, Iris began to learn how to adapt to her new reality.")
                                .font(Font.titleFont())
                                .frame(width: 728)
                            Image("chapter2-adapting1")
                                .resizable()
                                .frame(width: 728, height: 450)
                                .overlay(Rectangle()
                                    .inset(by: 3)
                                    .stroke(Color.black2, style: StrokeStyle(lineWidth: 6, dash: [12, 12])))
                            Text("she learned to navigate the world with perseverance and the help of assistive technologies.")
                                .font(Font.titleFont())
                                .frame(width: 728)
                            HStack(spacing: 120) {
                                Image("chapter2-adapting2")
                                    .resizable()
                                    .frame(width: 300, height: 450)
                                    .overlay(Rectangle()
                                        .inset(by: 3)
                                        .stroke(Color.black2, style: StrokeStyle(lineWidth: 6, dash: [12, 12])))
                                Image("chapter2-adapting3")
                                    .resizable()
                                    .frame(width: 300, height: 450)
                                    .overlay(Rectangle()
                                        .inset(by: 3)
                                        .stroke(Color.black2, style: StrokeStyle(lineWidth: 6, dash: [12, 12])))
                            }
                           
                            Text("Iris discovered her own capabilities and found ways to accomplish tasks independently.")
                                .font(Font.titleFont())
                                .frame(width: 728)
                            Image("chapter2-adapting4")
                                .resizable()
                                .frame(width: 728, height: 530)
                                .overlay(Rectangle()
                                    .stroke(Color.black2, lineWidth: 6))
                            
                            
                            NextButton(destination: MiniGame3())
                        }
                        .padding()
                        .foregroundColor(Color.black1)
                        .multilineTextAlignment(.center)
                    } .padding()
                    .frame(width: geometry.size.width)
                  
                }
            }
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    Adapting()
}
