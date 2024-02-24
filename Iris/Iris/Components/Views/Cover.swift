//
//  Cover.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Cover: View {
    let number: String
    let title: String
    let coverImage: String

    var body: some View {
            VStack{
                ClearButtonView(text: "chapter \(number).")
                Text(title)
                    .font(Font.titleFont())
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black1)
                Image(coverImage)
                    .resizable()
                    .frame(width: 650, height: 650)
            }
    }
}

#Preview {
    Cover(number: "1", title: "''blurred visions''", coverImage: "beginning-start")
}
