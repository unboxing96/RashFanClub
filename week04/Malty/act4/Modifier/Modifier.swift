//
//  ImageSizeModifier.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/13.
//

import SwiftUI

struct TextLinearModifier: ViewModifier {
    var fontSize: Double
    var fontWeight: Font.Weight
    var textAlignment: TextAlignment
	
    
    func body(content: Content) -> some View {
        content
            .font(.system(size : fontSize, weight: fontWeight))
            .fontWeight(.bold)
            .foregroundStyle(
                LinearGradient(
                    colors: [Color("ColorFontPurple100"), Color("ColorFontPurple200")],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .multilineTextAlignment(textAlignment)
    }
}


struct TextStyleModifier: ViewModifier {
    var fontSize: Double
    var fontWeight: Font.Weight
    var fontColor: String
    var textAlignment: TextAlignment
    
    func body(content: Content) -> some View {
        content
            .font(.system(size : fontSize, weight: fontWeight))
            .foregroundStyle(Color("\(fontColor)"))
            .multilineTextAlignment(textAlignment)
    }
}



extension View {
    ///폰트 그라디언트 컴포넌트
    func customLinear(fontSize: Double, fontWeight : Font.Weight, textAlignment : TextAlignment) -> some View {
        self.modifier(TextLinearModifier(fontSize: fontSize, fontWeight: fontWeight, textAlignment: textAlignment))
    }
    
    ///폰트 스타일 컴포넌트
    func customTextStyle(fontSize: Double, fontWeight : Font.Weight, fontColor : String, textAlignment : TextAlignment) -> some View {
        self.modifier(TextStyleModifier(fontSize: fontSize, fontWeight : fontWeight, fontColor : fontColor, textAlignment: textAlignment))
    }
    
}

