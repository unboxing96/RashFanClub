//
//  Colors.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import Foundation
import SwiftUI


enum colorBg: String{
    case bgWhite100
    case bgWhite200
    case bgWhite300
    
    var colorName: Color{
        switch self{
        case.bgWhite100:
            return Color("BgWhite100")
        case .bgWhite200:
            return Color("BgWhite200")
        case .bgWhite300:
            return Color("BgWhite300")
        }
    }
}

enum colorDvider: String{
    case dividerGray
    
    var colorName: Color{
        switch self{
        case.dividerGray:
            return Color("DividerGray")
        }
    }
}

enum icon: String{
    case iconBlack
    case iconGreen
    
    var colorName: Color{
        switch self{
        case.iconBlack:
            return Color("IconBlack")
            
        case .iconGreen:
            return Color("IconGreen")
        }
    }
}

enum colorFont: String{
    case fontBlack
    case fontGray100
    case fontGray200
    case fontGreen
    
    var colorName: Color{
        switch self{
        case.fontBlack:
            return Color("FontBlack")
        case .fontGray100:
            return Color("FontGray100")
        case .fontGray200:
            return Color("FontGray200")
        case .fontGreen:
            return Color("FontGreen")
        }
    }
}
