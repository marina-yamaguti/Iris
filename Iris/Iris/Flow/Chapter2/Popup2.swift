//
//  Popup2.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup2: View {
    @State private var showPopup = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondBG
                    .ignoresSafeArea()
                VStack {
                    if showPopup {
                        Popup(title: "tactile paving.", description: "system of textured ground surface found on footpaths and stairs to warn pedestrians who are visually impaired.", coverImage: "chapter2-popup2", destination: MeetDog())
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        showPopup = true
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    Popup2()
}
