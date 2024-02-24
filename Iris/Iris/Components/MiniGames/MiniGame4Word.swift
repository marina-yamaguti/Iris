//
//  MiniGame4Word.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame4Word: View {
    let numberArray: [Int]
    let word: String = "IRIS"
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<wordCount) { index in
                Minigame4Letter(letter: String(word[word.index(word.startIndex, offsetBy: index)]), colorIndex: numberArray[index])
            }
        }
    }
    
    private var wordCount: Int {
        return word.count
    }
}

#Preview {
    MiniGame4Word(numberArray: [1, 0, 2, 2])
}
