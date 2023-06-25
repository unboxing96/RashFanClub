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
            Image("ImgContentL01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("채드도 놀란")
                        Text("iPhone 14 Pro")
                        Spacer()
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Image("ImgContentL02")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("Dynamic Island")
                        Text("iPhone을 다루는 완전히")
                        Text("새로운 방법.")
                        Spacer()
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Image("ImgContentSm01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("그 모든 걸\n가능케 하는\n브레인.")
                        Spacer()
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Image("ImgContentSm02")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("오래 가는 배터리")
                        Text("온종일,")
                        Text("올인.")
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Image("ImgContentL03")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("상시표시형 디스플레이.")
                        Text("잠긴 동안에도")
                        Text("잠드는 법 없이.")
                        Spacer()
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
            Image("ImgContentL04")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("Ceramic Shield")
                        Text("그 어떤 스마트폰")
                        Text("글래스보다 견고한 소재.")
                        Spacer()
                    }
                    .foregroundColor(Color("ColorFontWhite"))
            }
        }
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
