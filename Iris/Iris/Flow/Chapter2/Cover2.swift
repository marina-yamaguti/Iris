//
//  Cover2.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Cover2: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                
                ZStack {
                    Color.brandLime
                        .ignoresSafeArea()
                    VStack {
                        Cover(number: "2", title: "''adapting shadows''", coverImage: "chapter2-cover")
                    } .padding()
                    NextButton(destination: Adapting())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
    }
}

#Preview {
    Cover2()
}
