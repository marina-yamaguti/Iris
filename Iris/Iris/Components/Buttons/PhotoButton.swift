//
//  PhotoButton.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct PhotoButton<Destination: View>: View {
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            ZStack {
                Image("photo-button")
                    .frame(width: 100, height: 100)
            }
        }
        .simultaneousGesture(
            TapGesture().onEnded {
                Constants.shared.play2(audio: "camera", volume: 2.0)
            }
        )
    }
}
#Preview {
    PhotoButton(destination: Text("Next View"))
}
