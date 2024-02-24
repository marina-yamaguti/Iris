//
//  Ending2.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Ending2: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.brandLime
                        .ignoresSafeArea()
                    VStack {
                        Text("\n\n\nSadly, regardless of their story, many people with disabilities face discrimination. \n\n")
                            .font(Font.regularFont())
                        Text("It is important to stand against ableism and embrace inclusivity.\n\n\n")
                            .font(Font.titleFont())
                            .frame(width: 723, height: 422, alignment: .top)
                    }  .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)
                        .padding()
                    NextButton(destination: Ending3())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    Ending2()
}
