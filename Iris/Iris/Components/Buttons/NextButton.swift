//
//  NextButton.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct NextButton<Destination: View>: View {
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            ZStack {
                Image("next-button")
                    .frame(width: 100, height: 100)
            }
        }
        .simultaneousGesture(
            TapGesture().onEnded {
                Constants.shared.play2(audio: "flip", volume: 0.6)
            }
        )
    }
}
#Preview {
    NextButton(destination: Text("Next View"))
}
