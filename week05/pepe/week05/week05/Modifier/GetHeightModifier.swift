//
//  GetHeightModifier.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import Foundation
import SwiftUI

struct ContentRectSize: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {}
}

struct GetHeightModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(GeometryReader {
                Color.clear.preference(key: ContentRectSize.self, value: $0.frame(in: .local))
            })
    }
}
