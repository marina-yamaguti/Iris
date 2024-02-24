//
//  NameDog.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct NameDog: View {
    @State var dogName: String = ""
    @State private var isEditing: Bool = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    VStack (alignment: .center, spacing: 40){
                        Text("what will be his name?")
                            .font(Font.titleFont())
                            .foregroundColor(Color.black1)
                        Image("chapter2-nameDog")
                            .resizable()
                            .frame(width: 800, height: 484)
                            .overlay(Rectangle()
                                .stroke(Color.black1, lineWidth: 6))
                        
                        TextField("", text: $dogName, onEditingChanged: { editing in
                            isEditing = editing
                        })
                            .multilineTextAlignment(.center)
                            .placeholder(when: dogName.isEmpty) {
                                HStack (spacing: 20) {
                                    Text("write name").foregroundColor(Color.gray1)
                                    Image(systemName: "pencil")
                                        .resizable()
                                        .frame(width: 21, height: 28)
                                        .foregroundColor(Color.gray1)
                                }
                            }
                            .padding(40)
                            .font(Font.titleFont())
                            .foregroundColor(Color.black1)
                            .background(
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 800, height: 99)
                                        .cornerRadius(90)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 90)
                                                .inset(by: 3)
                                                .stroke(Color.black1, style: StrokeStyle(lineWidth: 6, dash: [16, 16]))
                                        )
                                }
                            )
                    }
                    .foregroundColor(Color.black1)
                    .padding()
                    if !dogName.isEmpty && isEditing == false {
                        NextButton(destination: Popup3(dogName: dogName))
                            .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}


#Preview {
    NameDog()
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .center,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
