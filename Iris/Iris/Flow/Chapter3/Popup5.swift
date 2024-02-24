//
//  Popup5.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup5: View {
    @State private var showPopup = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondBG
                    .ignoresSafeArea()
                VStack {
                    if showPopup {
                        Popup(title: "braille.", description: "system of raised dots that can be read with the fingers by people who are blind or who have low vision.", coverImage: "chapter3-popup5", destination: Graduation())
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
    Popup5()
}
