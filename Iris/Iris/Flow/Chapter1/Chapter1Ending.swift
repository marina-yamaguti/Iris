//
//  Chapter1Ending.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Chapter1Ending: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                        .ignoresSafeArea()
                    ChapterEnding(title: "for the first time in her life, she wasn't sure what to do.", image: "chapter1-ending", endingText: "what could help Iris?")
//                    FinishButton(destination: Cover2())
//                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarHidden(true)
        
    }
}


#Preview {
    Chapter1Ending()
}
