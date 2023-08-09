//
//  Font.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/30.
//

import SwiftUI

let pretendardBlack = "Pretendard-Black.otf"
let pretendardBold = "Pretendard-Bold.otf"
let pretendardExtraBold = "Pretendarç-ExtraBold.otf"
let pretendardExtraLight = "Pretendard-ExtraLight.otf"
let pretendardLight = "Pretendard-Light.otf"
let pretendardMedium = "Pretendard-Medium.otf"
let pretendardRegular = "Pretendard-Regula.otf"
let pretendardSemiBold = "Pretendard-SemiBold.otf"
let pretendardThin = "Pretendard-Thin.otf"

extension Font {
    enum Pretendard {
        case thin
        case extraLight
        case light
        case regular
        case medium
        case semiBold
        case bold
        case extraBold
        case black
        case custom(String)
        
        var value: String {
            switch self {
            case .thin:
                return "Pretendard-Thin"
            case .extraLight:
                return "Pretendard-ExtraLight"
            case .light:
                return "Pretendard-Light"
            case .regular:
                return "Pretendard-Regular"
            case .medium:
                return "Pretendard-Medium"
            case .semiBold:
                return "Pretendard-SemiBold"
            case .bold:
                return "Pretendard-Bold"
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .black:
                return "Pretendard-Black"
            case .custom(let name):
                return name
            }
        }
    }
    
    static func pretendard(size: CGFloat = 13, _ type: Pretendard) -> Font {
        return .custom(type.value, size: size)
    }
}
