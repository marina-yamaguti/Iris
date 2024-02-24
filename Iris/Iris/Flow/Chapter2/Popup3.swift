//
//  Popup3.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup3: View {
    @State private var showPopup = false
    let dogName: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondBG
                    .ignoresSafeArea()
                VStack {
                    if showPopup {
                        Popup(title: "guide dogs.", description: "assistance dogs like \(dogName), trained to lead blind or visually impaired people around obstacles.", coverImage: "chapter2-popup3", destination: Chapter2Ending())
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
    Popup3(dogName: "name")
}
