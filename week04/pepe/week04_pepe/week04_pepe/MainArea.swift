//
//  MainArea.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//  MainArea: TabView{ ZStack{ Image, VStack{ Text, Text, Button } } }

import SwiftUI

struct MainArea: View {
    
    @State var itemOtherColor = itemOtherColors()
    @State var selectedButtonIndex: Int = 0

    var body: some View {
        ZStack {
            Image(itemOtherColor.imgName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    VStack {
                        Text("iPhone 14 Pro")
                            .foregroundColor(Color("ColorFontWhite"))
                        Text("프로 그 이상.")
                            .foregroundColor(Color("ColorFontWhite"))
                        Spacer()
                        // 버튼 부분
                        // ForEach로 생성하고, index로 데이터를 조작할 수 있게
                        //
                        HStack {
                            ForEach(0..<4) { index in
                                Button {
                                    itemOtherColor.imgName = itemOtherColorArr[index][0]
                                    itemOtherColor.colorName = itemOtherColorArr[index][1]
                                    itemOtherColor.imgProductName = itemOtherColorArr[index][3]
                                    selectedButtonIndex = index  // Update the selected button index when the button is tapped
                                } label: {
                                    ZStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(Color(itemOtherColorArr[index][2]))
                                            .overlay(
                                                Circle()
                                                    .strokeBorder(selectedButtonIndex == index ? Color.blue : Color.clear, lineWidth: 2)
                                                    .frame(width: 25, height: 25)
                                            )
                                    }
                                }
                            }
                        }
                        Text(itemOtherColor.colorName)
                            .foregroundColor(Color("ColorFontWhite"))
                        Button {
                            EmptyView()
                        } label: {
                            HStack {
                                Text("AR로 보기")
                                Image(systemName: "arkit")
                            }
                        }
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
