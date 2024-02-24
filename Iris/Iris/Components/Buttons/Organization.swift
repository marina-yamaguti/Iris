//
//  Organization.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Organization: View {
    let image: String
    let name: String
    let country: String
    let link: String
    
    var body: some View {
        VStack {
            Button(action: {
                if let url = URL(string: link) {
                    UIApplication.shared.open(url)
                }
            }) {
                Image(image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, -20)
            }
            Text(name)
                .font(Font.bodyFont())
                .multilineTextAlignment(.center)
                .frame(width: 378, height: 112, alignment: .center)
                .padding(.bottom, -50)
            Text(country)
                .font(Font.textFont())
                .multilineTextAlignment(.center)
                .frame(width: 378, height: 112, alignment: .center)
        }
        .foregroundColor(Color.black1)
    }
}

#Preview {
    Organization(image: "beginning-start", name: "AFB", country: "(USA)", link: "webite-link")
}
