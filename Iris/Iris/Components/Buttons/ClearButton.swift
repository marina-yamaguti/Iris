//
//  ClearButton.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct ClearButtonView: View {
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 360, height: 100)
                .cornerRadius(90)
                .overlay(
                    RoundedRectangle(cornerRadius: 90)
                        .inset(by: 3)
                        .stroke(Color.black1, style: StrokeStyle(lineWidth: 6, dash: [16, 16]))
                )
            Text(text)
                .font(
                    Font.titleFont()
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black1)
        }
    }
}

#Preview {
    ClearButtonView(text: "about")
}
