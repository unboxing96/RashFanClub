//
//  Model.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//

import SwiftUI
import Foundation

enum MainAreaItemData: String, CaseIterable {
    case deepPurple = "딥 퍼플"
    case gold = "골드"
    case silver = "실버"
    case spaceBlack = "스페이스 블랙"
    
    var imageName: String {
        switch self {
        case .deepPurple: return "ImgMain01"
        case .gold: return "ImgMain02"
        case .silver: return "ImgMain03"
        case .spaceBlack: return "ImgMain04"
        }
    }
    
    var buttonColor: String {
        switch self {
        case .deepPurple: return "ColorBtnDeepPurple"
        case .gold: return "ColorBtnGold"
        case .silver: return "ColorBtnSliver"
        case .spaceBlack: return "ColorBtnSpaceBlack"
        }
    }
    
    var productName: String {
        switch self {
        case .deepPurple: return "imgProduct01"
        case .gold: return "imgProduct02"
        case .silver: return "imgProduct03"
        case .spaceBlack: return "imgProduct04"
        }
    }
    
    var color: Color {
        return Color(buttonColor)
    }
}

enum BgColor: String {
    case black = "ColorBgBlack"
    case gray = "ColorBgGray"
    case white = "ColorBgWhite"
    
    var color: Color {
        return Color(self.rawValue)
    }
}

enum BtnColor: String {
    case sliver = "ColorBtnSliver"
    case gold = "ColorBtnGold"
    case spaceBlack = "ColorBtnSpaceBlack"
    case blue = "ColorBtnBlue"
    case deepPurple = "ColorBtnDeepPurple"

    var color: Color {
        return Color(self.rawValue)
    }
}

enum FontColor: String {
    case white = "ColorFontWhite"
    case darkGray = "ColorFontDarkGray"
    case gray = "ColorFontGray"
    case purpleStart = "ColorFontPurpleStart"
    case purpleEnd = "ColorFontPurpleEnd"

    var color: Color {
        return Color(self.rawValue)
    }
}
