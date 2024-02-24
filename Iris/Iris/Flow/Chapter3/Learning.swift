//
//  Learning.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Learning: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    VStack (alignment: .center){
                        Text("Iris continues her studies towards graduation, with new methods of learning.")
                            .font(Font.titleFont())
                            .multilineTextAlignment(.center)
                            .frame(width: 780)
                            .foregroundColor(Color.black1)
                            .padding(.bottom, 50)
                        Image("chapter3-learning")
                            .resizable()
                            .frame(width: 550, height: 550)
                            .overlay(
                                Rectangle()
                                    .stroke(Color.black2, lineWidth: 6)
                            )
                            .padding(.bottom, 100)
                        
                        
                    } .padding()
                    NextButton(destination: MiniGame4())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    Learning()
}
