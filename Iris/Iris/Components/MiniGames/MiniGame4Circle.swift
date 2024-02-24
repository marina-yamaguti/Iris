//
//  MiniGame4Circle.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame4Circle: View {
    @Binding var data: CircleData
    
    var body: some View {
        Circle()
            .fill(self.data.color)
            .frame(width: 200, height: 200)
            .onTapGesture {
                if self.data.isTouched == false {
                    self.data.color = .black1
                }
                self.data.isTouched = true
            }
    }
}
