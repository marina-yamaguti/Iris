//
//  MiniGame4Braille.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame4Braille: View {
    @Binding var brailleData: [[CircleData]]
    
    var body: some View {
        VStack(spacing: 50) {
            ForEach(brailleData.indices, id: \.self) { rowIndex in
                HStack(spacing: 50) {
                    ForEach(self.indicesInRange(self.brailleData[rowIndex]), id: \.self) { columnIndex in
                        MiniGame4Circle(data: self.$brailleData[rowIndex][columnIndex])
                    }
                }
            }
        }
    }
    
    private func indicesInRange(_ array: [CircleData]) -> Range<Int> {
        return 0..<array.count
    }
}


#Preview {
    @State var brailleData: [[CircleData]] = [
       [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)],
       [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)],
       [CircleData(isTouched: false, color: .brandRed), CircleData(isTouched: true, color: .secondBG)]
   ]
   return MiniGame4Braille(brailleData: $brailleData)}
