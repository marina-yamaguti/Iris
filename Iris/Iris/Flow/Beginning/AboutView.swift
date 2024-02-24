//
//  AboutView.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct AboutView: View {
    let aboutIris: String = "Iris is a story-driven game about the life of a young girl with a vision disability, aiming to evoke empathy and raise awareness about accessibility."
    
    let aboutMe: String = "I'm Marina, a 20 year old Software Engineering and Digital Design Student from Brazil. \n\nCurrently, I'm an iOS Developer at Apple Developer Academy POA, where I work on projects I'm passionate about, like Iris!"
    
    let aboutCopyright: String = "soundtrack: Life Blossom by Keys of Moon \nfont: OpenDyslexic - https://opendyslexic.org/ "
    
    var body: some View {
        ZStack {
            Color.brandPeach
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20){
                    Text("About Iris")
                        .font(Font.titleFont())
                    Rectangle()
                        .frame(width: 205, height: 4)
                        .padding(.top, -40)
                    Text(aboutIris)
                        .font(Font.textFont())
                        .padding(.top, -20)
                                    
                    Text("Credits")
                        .font(Font.titleFont())
                    Rectangle()
                        .frame(width: 140, height: 4)
                        .padding(.top, -40)
                    Text(aboutMe)
                        .font(Font.textFont())
                        .padding(.top, -20)
                    
                    Image("beginning-profile")
                    .resizable()
                    .frame(width: 175, height: 175)
                    
                
                    Text("Copyright")
                        .font(Font.titleFont())
                    Rectangle()
                        .frame(width: 190, height: 4)
                        .padding(.top, -40)
                    Text(aboutCopyright)
                        .font(Font.textFont())
                        .padding(.top, -20)
                }   .multilineTextAlignment(.leading)
                    .foregroundColor(Color.black1)
                    .padding()
                
        }
         .accentColor(Color.black1)
    }
}

#Preview {
    AboutView()
}
