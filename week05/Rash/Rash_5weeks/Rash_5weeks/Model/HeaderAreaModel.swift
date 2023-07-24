//
//  HeaderAreaModel.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/06.
//

import Foundation
import SwiftUI
enum nicknmae : String{
    case mK
    case pepe
    case chad
    case seez
    case jay
    case royce
    case rash
    case bullmang
    
    var banner : String{
        switch self {
        case .mK:
            return "ImgBanner01"
        case .pepe:
            return "ImgBanner02"
        case .chad:
            return "ImgBanner03"
        case .seez:
            return "ImgBanner04"
        case .jay:
            return "ImgBanner05"
        case .royce:
            return "ImgBanner06"
        case .rash:
            return "ImgBanner07"
        case .bullmang:
            return "ImgBanner08"
        }
    }
    var lineBanner : String{
        switch self {
        case .mK:
            return "ImgLineBanner01"
        case .pepe:
            return "ImgLineBanner02"
        case .chad:
            return "ImgLineBanner03"
        case .seez:
            return "ImgLineBanner04"
        case .jay:
            return "ImgLineBanner05"
        case .royce:
            return "ImgLineBanner06"
        case .rash:
            return "ImgLineBanner07"
        case .bullmang:
            return "ImgLineBanner08"
        }
    }
}

struct HeeaderModel: Identifiable {
    let id = UUID()
    let imageName: String
    let lineBanner: String
}

let headrs: [HeeaderModel] = [
    .init(imageName: "ImageBanner01", lineBanner: "ImgLineBanner01"),
    .init(imageName: "ImageBanner02", lineBanner: "ImgLineBanner02"),
    .init(imageName: "ImageBanner03", lineBanner: "ImgLineBanner03"),
    .init(imageName: "ImageBanner04", lineBanner: "ImgLineBanner04"),
    .init(imageName: "ImageBanner05", lineBanner: "ImgLineBanner05"),
    .init(imageName: "ImageBanner06", lineBanner: "ImgLineBanner06"),
    .init(imageName: "ImageBanner07", lineBanner: "ImgLineBanner07"),
    .init(imageName: "ImageBanner08", lineBanner: "ImgLineBanner08"),
    
    
    
]
