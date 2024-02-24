//
//  Graduation.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Graduation: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    VStack(alignment: .center, spacing: 40) {
                        Text("and so, let's capture a special moment...")
                            .font(Font.titleFont())
                        Image("chapter3-graduation")
                            .resizable()
                            .frame(width: 840, height: 654)
                        PhotoButton(destination: Chapter3Ending())
                        Text("a reminder of Iris’ inspiring journey!")
                            .font(Font.titleFont())
                    }
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black1)
 
                }
                
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    Graduation()
}
