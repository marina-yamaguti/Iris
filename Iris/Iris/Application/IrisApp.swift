import SwiftUI

@main
struct IrisApp: App {
    @State private var showSplashScreen = true
    @State private var showMessageView = false
    @State private var showStartView = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if showSplashScreen {
                    SplashScreen()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation {
                                    showSplashScreen = false
                                    showMessageView = true
                                }
                            }
                        }
                } else if showMessageView {
                    MessageView()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation {
                                    showMessageView = false
                                    showStartView = true
                                }
                            }
                        }
                } else if showStartView {
                    StartView()
                }
            }.onAppear {
            Constants.shared.playAudio(audio: "soundtrack", loop: true, volume: 0.5)
            }
        }
    }
}

