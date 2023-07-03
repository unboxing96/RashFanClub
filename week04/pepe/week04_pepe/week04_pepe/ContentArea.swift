    //
    //  ContentArea.swift
    //  week04_pepe
    //
    //  Created by kimpepe on 2023/06/22.
    //  ContentArea: VStack { ZStack{ Image, Text } }

import SwiftUI

struct ContentArea: View {
    // View의 본문을 정의함.
    var body: some View {
        // 스크롤 가능한 뷰를 생성함.
        ScrollView {
            // 첫 번째 이미지를 표시함.
            Image("ImgContentL01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        // 이미지 위에 텍스트를 겹침.
                        Text("채드도 놀란")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        Text("iPhone 14 Pro")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        // 공간을 채움.
                        Spacer()
                    }
                    // 텍스트 위 여백을 40으로 설정함.
                    .padding(.top, 40)
                    .foregroundColor(FontColor.white.color)
            }
            // 두 번째 이미지를 표시함.
            Image("ImgContentL02")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        // 이미지 위에 텍스트를 겹침.
                        Text("Dynamic Island")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        Text("iPhone을 다루는 완전히")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        Text("새로운 방법.")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        // 공간을 채움.
                        Spacer()
                    }
                    // 텍스트 위 여백을 40으로 설정함.
                    .padding(.top, 40)
                    .foregroundColor(FontColor.gray.color)
            }
            // 세 번째 이미지를 표시함.
            Image("ImgContentSm01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    HStack {
                        // 이미지 위에 텍스트를 겹침.
                        VStack {
                            Text("그 모든 걸\n가능케 하는\n브레인.")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            // 공간을 채움.
                            Spacer()
                        }
                        // 공간을 채움.
                        Spacer()
                    }
                    // 텍스트 위와 좌측 여백을 각각 40으로 설정함.
                    .padding(.top, 40)
                    .padding(.leading, 40)
                    .foregroundStyle(LinearGradient(
                        colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                    ))
            }
            // 네 번째 이미지를 표시함.
            Image("ImgContentSm02")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        // 이미지 위에 텍스트를 겹침.
                        Text("오래 가는 배터리")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .foregroundStyle(LinearGradient(
                                colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                            ))
                        Text("온종일,")
                            .font(.system(size: 54))
                            .fontWeight(.bold)
                            .foregroundStyle(LinearGradient(
                                colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                            ))
                        Text("올인.")
                            .font(.system(size: 54))
                            .fontWeight(.bold)
                            .foregroundStyle(LinearGradient(
                                colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                            ))
                    }
            }
            // 다섯 번째 이미지를 표시함.
            Image("ImgContentL03")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        // 이미지 위에 텍스트를 겹침.
                        Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                        // 공간을 채움.
                        Spacer()
                    }
                    // 텍스트 위 여백을 40으로 설정함.
                    .padding(.top, 40)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(LinearGradient(
                        colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                    ))
            }
            // 여섯 번째 이미지를 표시함.
            Image("ImgContentL04")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        // 이미지 위에 텍스트를 겹침.
                        Text("Ceramic Shield")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(FontColor.gray.color)
                        Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(LinearGradient(
                                colors: [FontColor.purpleStart.color, FontColor.purpleEnd.color], startPoint: .top, endPoint: .bottom
                            ))
                        // 공간을 채움.
                        Spacer()
                    }
                    // 텍스트 위 여백을 40으로 설정함.
                    .padding(.top, 40)
                    .foregroundColor(FontColor.white.color)
            }
        }
        // 배경색을 설정함.
        .background(BgColor.black.color)
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
