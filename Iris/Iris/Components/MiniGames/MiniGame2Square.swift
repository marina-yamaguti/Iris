//
//  MiniGame2Square.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame2Square: View {
    @Binding var touched: [Bool]
    let index: Int
    let width: CGFloat
    let height: CGFloat
    let image: String
    
    var body: some View {
        ZStack {
            if !touched[index] {
                Rectangle()
                    .foregroundColor(Color.secondBG)
                    .onTapGesture {
                        touched[index] = true
                    }
                    .frame(width: width, height: height)
                    .overlay(
                        Rectangle()
                            .inset(by: 4)
                            .stroke(Color.black1, style: StrokeStyle(lineWidth: 8, dash: [16, 16]))
                    )
                
            } else {
                Image(image)
                    .resizable()
                    .frame(width: width, height: height)
                    .scaledToFill()
                    .overlay(
                        Rectangle()
                            .inset(by: 4)
                            .stroke(Color.black1, style: StrokeStyle(lineWidth: 8, dash: [16, 16]))
                    )
            }
        }
        .frame(width: width, height: height)
        .onTapGesture {
            touched[index] = true
        }
    }
}
