//
//  MoreAbout.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MoreAbout: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    VStack (spacing: 44){
                        HStack (spacing: 44){
                            Image("chapter1-more1")
                            Image("chapter1-more2")
                        }
                        Image("chapter1-more3")
                    }
                    NextButton(destination: MiniGame1())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
        
    }
}
#Preview {
    MoreAbout()
}
