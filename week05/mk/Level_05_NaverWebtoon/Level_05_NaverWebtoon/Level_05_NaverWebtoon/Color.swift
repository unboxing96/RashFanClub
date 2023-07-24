//
//  Color.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/09.
//



import SwiftUI

extension Color {
    
    // MARK: - FontColor
    ///#000000
    static var fontBlack = Color("FontBlack")
    ///#112323
    static var fontGray100 = Color("FontGray100")
    static var fontGray200 = Color("FontGray200")
    static var fontGreen = Color("FontGreen")
  
    static var bgWhite100 = Color("BgWhite100")
    static var bgWhite200 = Color("BgWhite200")
    static var bgWhite300 = Color("BgWhite300")
    static var dividerGray = Color("DividerGray")
    
    static var iconBlack = Color("IconBlack")
    static var iconGreen = Color("IconGreen")
}

//enum과 switch문은 색상으로 어떤 동작을 취할 때. 색깔 클릭 시 배경이 바뀔 때

extension Image {
    static var questionmarkCircleFill = Image(systemName: "questionmark.circle.fill")
    static var chevronRight = Image(systemName: "chevron.right")
}

