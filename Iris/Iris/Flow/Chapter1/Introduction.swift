//
//  Introduction.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    VStack {
                        Text("meet Iris\n(19 y/0) ")
                            .font(Font.titleFont())
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.black1)
                            .padding(.bottom, 50)
                        Image("chapter1-intro")
                            .frame(width: 550, height: 550)
                            .background(Color.brandPurple)
                            .overlay(
                                Rectangle()
                                    .stroke(Color.black2, lineWidth: 6)
                            )
                            .padding(.bottom, 100)
                      
                        
                    } .padding()
                    NextButton(destination: MoreAbout())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarBackButtonHidden()
    }
}


#Preview {
    Introduction()
}
