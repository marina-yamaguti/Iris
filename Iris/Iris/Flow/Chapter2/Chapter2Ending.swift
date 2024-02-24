//
//  Chapter2Ending.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Chapter2Ending: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    ChapterEnding(title: "with her new companion and growing adaptability, Iris’ world became...", image: "chapter2-ending", endingText: "brighter and full of possibilities!")
//                    FinishButton(destination: Cover3())
//                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
        
    }
}

#Preview {
    Chapter2Ending()
}
