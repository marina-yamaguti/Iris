//
//  Instruction.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Instruction: View {
    let instruction: String
    var body: some View {
        VStack {
            Image(systemName: "hand.draw.fill")
                .resizable()
                .frame(width: 109, height: 93)
            Text(instruction)
                .font(Font.titleFont())
                .multilineTextAlignment(.center)
        }  .foregroundColor(Color.black1)
        
    }
}

#Preview {
    Instruction(instruction: "scratch to\n reveal...")
}
