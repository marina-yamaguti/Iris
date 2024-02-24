//
//  Popup1.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup1: View {
    @State private var showPopup = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondBG
                    .ignoresSafeArea()
                VStack {
                    if showPopup {
                        Popup(title: "vision impairment.", description: "any kind of vision loss, whether it's someone who cannot see at all or someone who has partial vision loss.", coverImage: "chapter1-popup1", destination: MiniGame2())
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
    Popup1()
}
