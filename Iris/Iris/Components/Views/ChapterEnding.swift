//
//  ChapterEnding.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct ChapterEnding: View {
    let title: String
    let image: String
    let endingText: String
    var body: some View {
        ZStack {
            Color.mainBG
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text(title)
                    .font(Font.titleFont())
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black1)
                Image(image)
                    .resizable()
                    .frame(width: 550, height: 550)
                    .background(Color.secondBG)
                    .overlay(
                        Rectangle()
                            .stroke(Color.black2, lineWidth: 6)
                    )

                Text(endingText)
                        .font(Font.titleFont())
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)
            }
        }
    }
}

#Preview {
    ChapterEnding(title: "ending of chapter,\n description.......", image: "beginning-start", endingText: "question?")
}
