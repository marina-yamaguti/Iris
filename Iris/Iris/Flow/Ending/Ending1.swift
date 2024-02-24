//
//  Ending1.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct Ending1: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.brandPurple
                        .ignoresSafeArea()
                    VStack {
                        Text("This is not just Iris' story.\n\n")
                            .font(Font.titleFont())
                        Text("Globally, at least 2.2 billion people have a near or distance vision impairment.\n(World Health Organization)\n\n\n")
                            .font(Font.regularFont())
                            .frame(width: 723, height: 422, alignment: .top)
                        
                    }  .multilineTextAlignment(.center)
                        .foregroundColor(Color.black1)
                        .padding()
                    NextButton(destination: Ending2())
                        .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                }
            }
        } .navigationBarBackButtonHidden()
    }
}

#Preview {
    Ending1()
}
