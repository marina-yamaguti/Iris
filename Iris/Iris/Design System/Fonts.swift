//
//  Fonts.swift
//  Iris
//
//  Created by Marina Yamaguti on 24/02/24.
//

import Foundation
import SwiftUI

extension Font {
    static func largeTitleFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 120)
            .weight(.bold)
    }
    
    static func endingFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 100)
            .weight(.bold)
    }
    
    static func mediumTitleFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 64)
            .weight(.bold)
    }
    
    static func titleFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 35)
                .weight(.bold)
    }
    
    static func regularFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 35)
            .weight(.regular)
    }
    
    static func bodyFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 24)
           .weight(.bold)
    }
    
    static func textFont() -> Font {
        return Font.custom("OpenDyslexic3", size: 24)
            .weight(.regular)
    }
}
