//
//  Chapter3Ending.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Chapter3Ending: View {
    @State private var showContent = false

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    Image("chapter3-gradPic")
                        .resizable()
                        .frame(width: 650, height: 810)
                    FinishButton(destination: Cover4())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
            .overlay(
                Color.white.opacity(showContent ? 0 : 1)
                    .animation(.easeInOut(duration: 0.5))
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    showContent = true
                }
            }
        
    }
}

#Preview {
    Chapter3Ending()
}
