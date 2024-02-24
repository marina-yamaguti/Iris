//
//  FinishButton.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct FinishButton<Destination: View>: View {
    let destination: Destination

    var body: some View {
        NavigationLink(destination:  destination) {
            ZStack {
                Image("finish-button")
                    .frame(width: 100, height: 100)
            }
        }  .simultaneousGesture(
            TapGesture().onEnded {
                Constants.shared.play2(audio: "flip", volume: 0.7)
            }
        )
    }
}

#Preview {
    FinishButton(destination: Text("Next View"))
}
