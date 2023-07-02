//
//  MainArea.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//  MainArea: TabView{ ZStack{ Image, VStack{ Text, Text, Button } } }

import SwiftUI

struct MainArea: View {
    
    // 다른 색상의 아이템 정보를 저장하는 상태 변수를 선언함.
    @State var itemOtherColor = itemOtherColors()
    // 선택된 버튼의 인덱스를 저장하는 상태 변수를 선언함. 초기 값은 0임.
    @State var selectedButtonIndex: Int = 0

    var body: some View {
        ZStack {
            // 상품 이미지를 표시함.
            Image(itemOtherColor.imgName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    VStack {
                        
                        // 상품명과 상품 설명을 표시하는 부분
                        VStack {
                            Text("iPhone 14 Pro")
                                .foregroundColor(Color("ColorFontWhite"))
                                .font(.system(size: 20))
                            Text("프로 그 이상.")
                                .foregroundColor(Color("ColorFontWhite"))
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                        }
                        // 상단 여백을 70으로 설정함.
                        .padding(.top, 70)
                        
                        Spacer()
                        
                        // 상품 색상명을 표시하는 부분
                        Text(itemOtherColor.colorName)
                            .foregroundColor(Color("ColorFontDarkGray"))
                            .font(.system(size: 10))
                            .padding(.bottom, 10)
                        
                        // 색상 선택 버튼을 생성하는 부분
                        HStack {
                            // 총 4개의 버튼을 생성함.
                            ForEach(0..<4) { index in
                                Button {
                                    // 버튼을 눌렀을 때, 상품 이미지, 색상명, 상품명을 업데이트함.
                                    itemOtherColor.imgName = itemOtherColorArr[index][0]
                                    itemOtherColor.colorName = itemOtherColorArr[index][1]
                                    itemOtherColor.imgProductName = itemOtherColorArr[index][3]
                                    // 선택된 버튼의 인덱스를 업데이트함.
                                    selectedButtonIndex = index
                                } label: {
                                    // 버튼의 디자인을 정의함.
                                    ZStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(Color(itemOtherColorArr[index][2]))
                                            .font(.system(size: 23))
                                            .overlay(
                                                Circle()
                                                    .strokeBorder(selectedButtonIndex == index ? Color.blue : Color.clear, lineWidth: 2)
                                                    .frame(width: 31, height: 31)
                                            )
                                    }
                                }
                            }
                        }
                        // 하단 여백을 20으로 설정함.
                        .padding(.bottom, 20)
                        
                        // "AR로 보기" 버튼
                        Button {
                            EmptyView()
                        } label: {
                            HStack {
                                Text("AR로 보기")
                                Image(systemName: "arkit")
                            }
                        }
                        // 하단 여백을 30으로 설정함.
                        .padding(.bottom, 30)
                    }
                )
        }
    }
}

struct MainArea_Previews: PreviewProvider {
    static var previews: some View {
        MainArea()
    }
}
