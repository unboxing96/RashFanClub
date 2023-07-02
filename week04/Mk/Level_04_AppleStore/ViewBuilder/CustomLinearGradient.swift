//
//  TextFieldModifier.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/15.
//

import SwiftUI

struct CustomLinearGradient: ViewModifier {
    var fontSize: Double
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize))
            .fontWeight(.bold)
            .foregroundStyle(
                LinearGradient(
                    colors: [Color("ColorFontPurple100"), Color("ColorFontPurple200")],
                    startPoint: .top,
                    endPoint: .bottom)
            )
    }
}

extension View{
    func customLinearGradient(fontSize: Double) -> some View{
        self.modifier(CustomLinearGradient(fontSize: fontSize))
    }
}
