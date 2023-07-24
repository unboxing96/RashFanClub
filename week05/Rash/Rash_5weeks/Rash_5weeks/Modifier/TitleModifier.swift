//
//  TitleModifier.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//
//
//import SwiftUI
//

import SwiftUI
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View{
        content
            .font(.custom("Pretendard-ExtraBold.subset.woff2", size: 13))
            .foregroundColor(colorFont.fontBlack.colorName)
            .lineLimit(1)
            .truncationMode(.tail)
        

    }
}

