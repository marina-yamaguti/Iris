//
//  MiniGame4.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame4: View {
    //first
    @State private var braille1: [[CircleData]] = Constants.shared.brailleI
    let array1: [Int] = Constants.shared.wordFirst
    @State private var complete1 = false
    
    //second
    @State private var braille2: [[CircleData]] = Constants.shared.brailleR
    let array2: [Int] = Constants.shared.wordSecond
    @State private var complete2 = false
    
    //third
    @State private var braille3: [[CircleData]] = Constants.shared.brailleI
    let array3: [Int] = Constants.shared.wordThird
    @State private var complete3 = false
    
    //fourth
    @State private var braille4: [[CircleData]] = Constants.shared.brailleS
    let array4: [Int] = Constants.shared.wordFourth
    @State private var complete4 = false
    
    let arrayLast: [Int] = Constants.shared.wordLast
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                Color.mainBG
                    .ignoresSafeArea()
                ZStack {
                    MiniGame4Struct(brailleData: $braille1, numberArray: array1, isComplete: $complete1)
                    if complete1 {
                        MiniGame4Struct(brailleData: $braille2, numberArray: array2, isComplete: $complete2)
                    }
                    if complete2 {
                        MiniGame4Struct(brailleData: $braille3, numberArray: array3, isComplete: $complete3)
                    }
                    if complete3 {
                        MiniGame4Struct(brailleData: $braille4, numberArray: array4, isComplete: $complete4)
                    }
                    if complete4 {
                        MiniGame4Struct(brailleData: $braille4, numberArray: arrayLast, isComplete: $complete4)
                        NextButton(destination: Popup5())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                    }
                }
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    MiniGame4()
}
