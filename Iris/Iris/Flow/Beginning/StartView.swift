//
//  StartView.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mainPink
                    .ignoresSafeArea()
                VStack {
                    Text("IRIS")
                        .font(
                            Font.largeTitleFont()
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)
                        .padding(.vertical, -60)

                    Text("a game about perspective")
                        .font(
                            Font.titleFont()
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)

                    
                    Image("beginning-start")
                        .padding(.vertical, 30)
                    
                    NavigationLink(destination: Cover1()) {
                        BlackButton(text: "START")
                    }
                    .padding()
                    
                    NavigationLink(destination: AboutView()) {
                        ClearButtonView(text: "about")
                    }
                    .padding()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarHidden(true)
    }
}

#Preview {
    StartView()
}
