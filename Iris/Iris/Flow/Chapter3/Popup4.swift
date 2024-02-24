//
//  Popup4.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup4: View {
    @State private var showPopup = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondBG
                    .ignoresSafeArea()
                VStack {
                    if showPopup {
                        Popup(title: "digital accessibility.", description: "design of websites and digital services that can be used by everyone (like Apple's Voice Control or Screen Readers).", coverImage: "chapter3-popup4", destination: Learning())
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
    Popup4()
}
