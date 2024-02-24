//
//  MiniGame3.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import SwiftUI

struct MiniGame3: View {
    @State var onFinish: Bool = false
    @State private var showMessage = true
    @State private var blurAmount: CGFloat = 10.0
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color.secondBG
                        .ignoresSafeArea()
                    ScratchImage(onFinish: $onFinish){
                        Image("chapter2-minigame3-2")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()

                    } overlayView: {
                        Image("chapter2-minigame3-1")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                    }
                    
                    if onFinish {
                        NextButton(destination: Popup2())
                            .position(x: geometry.size.width / 2, y:  geometry.size.height - 100)
                    }
                }
                .blur(radius: showMessage ? 10 : 0)
                
                if showMessage {
                    Color.secondBG.opacity(0.5)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation {
                                showMessage = false
                                blurAmount = 0
                            }
                        }
                    
                    Instruction(instruction: "scratch to\n reveal...")
                        .transition(.opacity)
                        .position(x: geometry.size.width / 2, y: geometry.size.height/2)
                        .onAppear {
                            Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false) { _ in
                                withAnimation {
                                    showMessage = false
                                    blurAmount = 0
                                }
                            }
                        }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MiniGame3()
}

struct ScratchImage<Content: View, OverlayView: View>: View {
    var content: Content
    var overlayView: OverlayView
    
    init(onFinish: Binding<Bool>, @ViewBuilder content: @escaping ()->Content, @ViewBuilder overlayView: @escaping ()-> OverlayView) {
        self._onFinish = onFinish
        self.content = content()
        self.overlayView = overlayView()
    }
    
    @State var startingPoint: CGPoint = .zero
    @State var points: [CGPoint] = []
    @GestureState var gestureLocation: CGPoint = .zero
    
    @Binding var onFinish: Bool
    
    var body: some View {
        ZStack {
            overlayView
           
            content
                .mask(ScratchMask(points: points, startingPoint: startingPoint)
                    .stroke(style: StrokeStyle(lineWidth: 100, lineCap: .round, lineJoin: .round)))
                .gesture(
                    DragGesture()
                        .updating($gestureLocation, body: { value, out, _ in
                            out = value.location
                            
                            DispatchQueue.main.async {
                                if startingPoint == .zero {
                                    startingPoint = value.location
                                }
                                points.append(value.location)
                            }
                        })
                        .onEnded({ value in
                            withAnimation {
                                onFinish = true
                            }
                        })
                )
        }
    }
}

struct ScratchMask: Shape {
    var points: [CGPoint]
    var startingPoint: CGPoint
    
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: startingPoint)
            path.addLines(points)
        }
    }
}



