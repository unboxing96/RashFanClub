//
//  Model.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import Foundation
import SwiftUI

struct WebtoonInfo: Identifiable {
    let id = UUID()
    var webtoonTitle: String
    var imageTitle: String
    var authorName: String
    var rateScore: String
}

struct HeaderBanner: Identifiable {
    let id = UUID()
    var lineBannerImage: String
    var backgroundImage: String
    var Index: Int
}

var swipeProducts = [
    HeaderBanner(lineBannerImage: "ImgLineBanner01", backgroundImage: "ImgBanner01", Index: 0),
    HeaderBanner(lineBannerImage: "ImgLineBanner02", backgroundImage: "ImgBanner02", Index: 1),
    HeaderBanner(lineBannerImage: "ImgLineBanner03", backgroundImage: "ImgBanner03", Index: 2),
    HeaderBanner(lineBannerImage: "ImgLineBanner04", backgroundImage: "ImgBanner04", Index: 3),
    HeaderBanner(lineBannerImage: "ImgLineBanner05", backgroundImage: "ImgBanner05", Index: 4),
    HeaderBanner(lineBannerImage: "ImgLineBanner06", backgroundImage: "ImgBanner06", Index: 5),
    HeaderBanner(lineBannerImage: "ImgLineBanner07", backgroundImage: "ImgBanner07", Index: 6),
    HeaderBanner(lineBannerImage: "ImgLineBanner08", backgroundImage: "ImgBanner08", Index: 7),
]
