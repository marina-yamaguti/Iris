//
//  MessageView.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ZStack {
            Color.black1
                .ignoresSafeArea()
            VStack {
                Image("beginning-iPad")
                    .resizable()
                    .frame(width: 512, height: 683)
                    .padding(.bottom, -80)
                Text("please play vertically for a better experience.")
                    .font(Font.titleFont())
                    .foregroundColor(.secondBG)
                    .multilineTextAlignment(.center)
                    .frame(width: 544, alignment: .top)
            }
        }
    }
}

#Preview {
    MessageView()
}
