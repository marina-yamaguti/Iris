//
//  Cover4.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Cover4: View {
    @State private var shouldAnimate = false
    @State private var canNavigate = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mainPink
                    .ignoresSafeArea()
                HStack(spacing: 0) {
                    ForEach(Array("THE END.").indices, id: \.self) { index in
                        Text(String(Array("THE END.")[index]))
                            .font(Font.titleFont())
                            .foregroundColor(Color.black1)
                            .opacity(shouldAnimate ? 1 : 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2 * Double(index)))
                    }
                }
                NavigationLink(
                    destination: Ending1(),
                    isActive: $canNavigate
                ) {
                    EmptyView()
                }
                .hidden()

                
            }
        }
        .navigationBarBackButtonHidden()
    .onAppear {
            shouldAnimate = true
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { timer in
                canNavigate = true
            }
        }
    }
}

#Preview {
    Cover4()
}
