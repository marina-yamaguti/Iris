//
//  Restart.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Restart: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.mainPink
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    Text("THANK YOU")
                        .font(Font.endingFont())
                    Text("for playing Iris!")
                        .font(Font.mediumTitleFont())
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 840, height: 615)
                            .overlay(
                                Rectangle()
                                    .inset(by: 4)
                                    .stroke(Color.black1, style: StrokeStyle(lineWidth: 8, dash: [16, 16]))
                            )
                        VStack {
                            Text("Tap to see organizations promoting inclusion and accessibility:")
                                .font(Font.titleFont())
                                .multilineTextAlignment(.center)
                                .frame(width: 800, alignment: .top)
                            HStack {
                                Organization(image: "ending-dorina", name: "Fundação Dorina Nowill para Cegos", country: "(Brazil)", link: "https://fundacaodorina.org.br/")
                                Organization(image: "ending-afb", name: "American Foundation for the Blind", country: "(USA)", link: "https://www.afb.org/")
                            }
                        }
                    }

                    NavigationLink(destination: StartView()) {
                        BlackButton(text: "RESTART")
                    }
                    .padding()
                }  .foregroundColor(Color.black1)
                
                
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    Restart()
}
