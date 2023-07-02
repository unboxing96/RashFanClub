    //
    //  ContentArea.swift
    //  week04_pepe
    //
    //  Created by kimpepe on 2023/06/22.
    //  ContentArea: VStack { ZStack{ Image, Text } }

import SwiftUI

struct ContentArea: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("ImgContentL01")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("채드도 놀란")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Text("iPhone 14 Pro")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Spacer()
                        }
                        .padding(.top, 40)
                    }
                
                Image("ImgContentL02")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("ProMotion으로 선명한 세상을 만나보세요.")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Text("120Hz의 ProMotion 기술로 더욱 매끄럽고 빠른 화면을 경험하세요.")
                                .font(.system(size: 16))
                                .foregroundColor(FontColor.white.color)
                            Spacer()
                        }
                        .padding(.top, 40)
                    }
                
                Image("ImgContentL03")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("그 무엇보다 강력한 카메라.")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Text("더욱 업그레이드된 카메라로 그 어떤 순간도 놓치지 마세요.")
                                .font(.system(size: 16))
                                .foregroundColor(FontColor.white.color)
                            Spacer()
                        }
                        .padding(.top, 40)
                    }
                
                Image("ImgContentL04")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("더욱 강력해진 A16 칩.")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Text("더욱 빠르고, 더욱 효율적인 A16 Bionic.")
                                .font(.system(size: 16))
                                .foregroundColor(FontColor.white.color)
                            Spacer()
                        }
                        .padding(.top, 40)
                    }
                
                Image("ImgContentL05")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("더욱 빠르게, 더욱 편리하게.")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                            Text("5G의 빠른 속도와 iOS 16의 편의성을 만나보세요.")
                                .font(.system(size: 16))
                                .foregroundColor(FontColor.white.color)
                            Spacer()
                        }
                        .padding(.top, 40)
                    }
            }
        }
        .background(BgColor.black.color)
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
