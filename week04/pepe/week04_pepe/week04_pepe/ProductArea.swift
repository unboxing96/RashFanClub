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
                        Button {
                            EmptyView()
                        } label: {
                            Text("apple.com에서 더 알아보기")
                        }

                    }
                }
            
            Image("ImgProduct01")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    VStack {
                        Text("iPhone 14 Pro")
                        Spacer()
                        Button {
                            EmptyView()
                        } label: {
                            Text("구입하기")
                        }
                        Text("₩ 1,550,000부터")
                    }
                }
            
            Button {
                EmptyView()
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("공유하기")
                }
            }
            
            Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")

        }
        .background(Color("ColorBgGray"))
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea()
    }
}
