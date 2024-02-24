//
//  Popup.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Popup<Destination: View>: View {
    let title: String
    let description: String
    let coverImage: String
    let destination: Destination
    
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 564, height: 721)
                .background(Color.white)
                .cornerRadius(45)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
                VStack(alignment: .center) {
                    Text(title)
                        .font(Font.titleFont())
                        .padding(.top, 20)
                    
                    Text(description)
                        .font(Font.textFont())
                        .frame(width: 399, alignment: .top)
                    
                    Image(coverImage)
                        .resizable()
                        .frame(width: 210, height: 210)
                }
            .multilineTextAlignment(.center)
            .foregroundColor(Color.black1)
            .padding()
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: destination) {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 39.84375, height: 39.84375)
                        .foregroundColor(Color.gray1)
                }
            }
        }
    }
}


#Preview {
    Popup(title: "vision impairment.", description: "any kind of vision loss, whether it's someone who cannot see at all or someone who has partial vision loss.", coverImage: "beginning-start", destination: Text("Next View"))
}
