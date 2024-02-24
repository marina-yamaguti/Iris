//
//  Ending3.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Ending3: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.brandYellow
                        .ignoresSafeArea()
                    VStack {
                       
                        Text("\n\n\nLet's learn to see things from a")
                            .font(Font.regularFont())
                            .padding(.bottom, 4)
                        Text("different perspective.\n\n\n")
                            .font(Font.titleFont())
                            .frame(width: 723, height: 422, alignment: .top)
                        
                    }  .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)
                        .padding()
                }
                NextButton(destination: Restart())
                    .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    Ending3()
}
