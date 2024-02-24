//
//  MiniGame4Letter.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Minigame4Letter: View {
    let letter: String
    let colorIndex: Int
    
    var body: some View {
        Text(letter)
            .font(Font.largeTitleFont())
            .foregroundColor(colorForIndex(colorIndex))
    }
    
    private func colorForIndex(_ index: Int) -> Color {
        switch index {
        case 0:
            return Color.brandRed
        case 1:
            return Color.black1
        default:
            return Color.gray1
        }
    }
}

struct Minigame4Letter_Previews: PreviewProvider {
    static var previews: some View {
        Minigame4Letter(letter: "A", colorIndex: 1)
    }
}
