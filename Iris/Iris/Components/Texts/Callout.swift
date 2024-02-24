//
//  Callout.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Callout: View {
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 750, height: 150)
                .background(Color.mainBG)
                .overlay(
                    Rectangle()
                        .inset(by: 4)
                        .stroke(.black, style: StrokeStyle(lineWidth: 8, dash: [16, 16]))
                )
            Text(text)
                .font(Font.bodyFont())
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black1)
                .fixedSize(horizontal: false, vertical: true)
                .padding(8)
        }
    }
}

#Preview {
    Callout(text: "She knew her eyesight would get worse over time, leading to blindness.")
}
