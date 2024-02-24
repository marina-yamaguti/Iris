//
//  MiniGame4Struct.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame4Struct: View {
    @Binding var brailleData: [[CircleData]]
    let numberArray: [Int]
        
    @Binding var isComplete: Bool
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.mainBG
                    VStack (alignment: .center, spacing: 10) {
                        MiniGame4Word(numberArray: numberArray)
                        MiniGame4Braille(brailleData: $brailleData)
                    }
                    .padding()
                }
            }
            .navigationBarBackButtonHidden()
            .onAppear {
                updateIsAllTrue()
            }
            .onChange(of: brailleData) { _ in
                updateIsAllTrue()
            }
            
        }
    }
    
    private func updateIsAllTrue() {
        isComplete = brailleData.flatMap { $0 }.allSatisfy { $0.isTouched }
    }
}

//#Preview {
//    @State var brailleData: [[CircleData]] = [
//        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)],
//        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)],
//        [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)]
//    ]
//    
//    @State var isComplete = false
//    
//    let numberArray: [Int] = [0, 2, 2, 2]
//    MiniGame4Struct(brailleData: $brailleData, numberArray: numberArray, isComplete: $isComplete)
//}
