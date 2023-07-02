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
            // 상단 텍스트와 버튼을 포함한 영역을 만듦.
            Rectangle()
                .frame(height: 173)
                .foregroundColor(.white)
                .overlay {
                    VStack {
                        Text("iPhone 14 Pro 더 깊이 살펴보기")
                            .font(.system(size: 24))
                        Button {
                            EmptyView()  // 버튼을 눌렀을 때 아무 동작도 하지 않음.
                        } label: {
                            Text("apple.com에서 더 알아보기")
                                .font(.system(size: 12))
                        }
                    }
                }
            
            // 상품 이미지를 표시함.
            Image("ImgProduct01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)  // 가능한 최대 너비로 이미지를 표시함.
                .overlay {
                    VStack {
                        Text("iPhone 14 Pro")
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                        Spacer()  // 공간을 채움.
                        Button {
                            EmptyView()  // 버튼을 눌렀을 때 아무 동작도 하지 않음.
                        } label: {
                            Text("구입하기")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorFontWhite"))
                                .padding(.vertical, 5)
                                .padding(.horizontal, 14)
                                .background(Color("ColorBtnBlue"))
                                .cornerRadius(20)
                        }
                        Text("₩ 1,550,000부터")
                            .font(.system(size: 10))
                    }
                    .padding(.top, 60)
                    .padding(.bottom, 51)
                }
                .border(.blue)

            // 공유하기 버튼을 만듦.
            Button {
                EmptyView()  // 버튼을 눌렀을 때 아무 동작도 하지 않음.
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("공유하기")
                        .fontWeight(.bold)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(Color("ColorBtnSliver"))
                .cornerRadius(10)
            }
            .padding(.top, 20)
            
            // 상품 설명을 표시함.
            Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
                .foregroundColor(Color("ColorFontDarkGray")).
                .font(.system(size: 10))
                .padding(.horizontal, 10)
                .padding(.top, 60)
        }
        .background(Color("ColorBgGray"))
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea()
    }
}
