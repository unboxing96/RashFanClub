
//
//
////
////  HeaderArea.swift
////  webtoon
////
////  Created by Jin Sang woo on 2023/07/15.
////
//
//import SwiftUI
//
//struct HeaderViewtmp: View {
//
//    let HeaderImages = ["ImgBanner01", "ImgBanner02", "ImgBanner03", "ImgBanner04", "ImgBanner05", "ImgBanner06", "ImgBanner07", "ImgBanner08"]
//    let LineBannerImages = ["ImgLineBanner01", "ImgLineBanner02", "ImgLineBanner03", "ImgLineBanner04", "ImgLineBanner05", "ImgLineBanner06", "ImgLineBanner07", "ImgLineBanner08"]
//
//    var body: some View {
//
//        ZStack(alignment: .top){
//            ScrollView(.horizontal){
//                TabView{
//                    ForEach(HeaderImages.indices, id : \.self){
//                        index in
//                        ZStack(alignment: .bottom){
//                            Image(HeaderImages[index])
//                                .resizable()
//                                .frame(width: 393, height: 250)
//                            Image(LineBannerImages[index])
//                                .resizable()
//                                .frame(width: 361, height:41)
//                        }
//                    }
//                }
//                .frame(width: 393, height: 250)
//                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//        }
//    }
//}
//
//struct HeaderViewtmp_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderViewtmp()
//    }
//}
