//
//  ProductArea.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//  ProductArea: indicator 안 보이는 TabView인가..? ZStack { Image, VStack { Text, Button, Text } }

import SwiftUI

struct ProductArea: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 173)
                .foregroundColor(.white)
                .overlay {
                    VStack {
                        Text("iPhone 14 Pro 더 깊이 살펴보기")
                            .font(.system(size: 24))
                        Button (action: {}) {
                            Text("apple.com에서 더 알아보기")
                                .font(.system(size: 12))
                        }
                    }
                }
            Image("ImgProduct01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .overlay {
                    VStack {
                        Text("iPhone 14 Pro")
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                        Spacer()
                        Button (action: {}) {
                            Text("구입하기")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(FontColor.white.color)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 14)
                                .background(BtnColor.blue.color)
                                .cornerRadius(20)
                        }
                        Text("₩ 1,550,000부터")
                            .font(.system(size: 10))
                    }
                    .padding(.top, 60)
                    .padding(.bottom, 51)
                }
                .border(.blue)
            
            Button (action: {}) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("공유하기")
                        .fontWeight(.bold)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(BtnColor.sliver.color)
                .cornerRadius(10)
            }
            .padding(.top, 20)
            
            Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
                .foregroundColor(FontColor.darkGray.color)
                .font(.system(size: 10))
                .padding(.horizontal, 10)
                .padding(.top, 60)
        }
        .background(BgColor.gray.color)
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea()
    }
}
