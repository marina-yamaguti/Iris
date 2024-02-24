//
//  NameDog.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct NameDog: View {
    @State var dogName: String = "Max"

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    VStack (alignment: .center, spacing: 40){
                         Text("meet \(dogName)!")
                            .font(Font.titleFont())
                            .foregroundColor(Color.black1)
                        Image("chapter2-nameDog")
                            .resizable()
                            .frame(width: 800, height: 484)
                            .overlay(Rectangle()
                                .stroke(Color.black1, lineWidth: 6))
                        
                    }
                    .foregroundColor(Color.black1)
                    .padding()
                        NextButton(destination: Popup3(dogName: dogName))
                     .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                     
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}
#Preview {
    NameDog()
}
