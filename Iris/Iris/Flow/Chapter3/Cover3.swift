//
//  Cover3.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Cover3: View {
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack {
                    Color.brandYellow
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Cover(number: "3", title: "''embracing change''", coverImage: "chapter3-cover")
                            .padding(.bottom, 40)
                        Spacer()
                    } .padding()
                    NextButton(destination: Popup4())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
    }
}

#Preview {
    Cover3()
}
