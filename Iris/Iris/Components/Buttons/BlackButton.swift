//
//  BlackButton.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct BlackButton: View {
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 360, height: 100)
                .background(Color.black1)
                .cornerRadius(90)
            Text(text)
                .font(
                    Font.titleFont()
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color.mainBG)
                .frame(width: 300, alignment: .top)
        }
    }
}

#Preview {
    BlackButton(text: "START")
}
