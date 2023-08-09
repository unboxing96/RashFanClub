//
//  ViewBuilder.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

@ViewBuilder

func systemImageLayout(image: Image, color : Color, fontSize: CGFloat) -> some View {
    image
        .foregroundColor(color)
        .font(.system(size: fontSize))
}

func textLayout(text: String, color : Color, fontSize: CGFloat) -> some View {
    Text(text)
        .foregroundColor(color)
        .font(.system(size: fontSize))
}
