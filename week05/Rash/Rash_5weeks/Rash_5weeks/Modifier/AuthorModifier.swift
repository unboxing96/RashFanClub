//
//  AuthorModifier.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import SwiftUI

struct AuthorModifier: ViewModifier {
    func body(content: Content) -> some View{
        content
            .font(.system(size: 10))
            .foregroundColor(colorFont.fontGray100.colorName)
    }
}

