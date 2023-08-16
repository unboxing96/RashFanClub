//
//  Model.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct WebtoonInfo : Identifiable {
	let id = UUID()
	var webtoonTitle : String
	var imageTitle : String
	var authorName : String
	var rateScore : String
}

struct HeaderBanner: Identifiable {
	let id = UUID()
	var lineBannerImage : String
	var backgroundImage : String
	var index : Int
}

var swipeProducts = [
	HeaderBanner(lineBannerImage: "ImgLineBanner01", backgroundImage : "ImgBanner01", index : 0 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner02", backgroundImage : "ImgBanner02", index : 1 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner03", backgroundImage : "ImgBanner03", index : 2 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner04", backgroundImage : "ImgBanner04", index : 3 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner05", backgroundImage : "ImgBanner05", index : 4 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner06", backgroundImage : "ImgBanner06", index : 5 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner07", backgroundImage : "ImgBanner07", index : 6 ),
	HeaderBanner(lineBannerImage: "ImgLineBanner08", backgroundImage : "ImgBanner08", index : 7 ),
]
