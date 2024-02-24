//
//  Cover1.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Cover1: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.brandPurple
                        .ignoresSafeArea()
                    VStack {
                        Cover(number: "1", title: "''blurred visions''", coverImage: "chapter1-cover")
                    } .padding()
                    NextButton(destination: Introduction())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            } .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Cover1()
}
