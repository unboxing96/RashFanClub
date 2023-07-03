//
//  MainArea.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//  MainArea: TabView{ ZStack{ Image, VStack{ Text, Text, Button } } }

import SwiftUI

struct MainArea: View {
    @State private var selectedItem = MainAreaItemData.deepPurple

    var body: some View {
        ZStack {
            Image(selectedItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    VStack {
                        
                        VStack {
                            Text("iPhone 14 Pro")
                                .foregroundColor(FontColor.white.color)
                                .font(.system(size: 20))
                            Text("프로 그 이상.")
                                .foregroundColor(FontColor.white.color)
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                        }
                        .padding(.top, 70)
                        
                        Spacer()
                        
                        Text(selectedItem.rawValue)
                            .foregroundColor(FontColor.darkGray.color)
                            .font(.system(size: 10))
                            .padding(.bottom, 10)
                        
                        HStack {
                            ForEach(MainAreaItemData.allCases, id: \.self) { item in
                                Button {
                                    selectedItem = item
                                } label: {
                                    ZStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(Color(item.buttonColor))
                                            .font(.system(size: 23))
                                            .overlay(
                                                Circle()
                                                    .strokeBorder(selectedItem == item ? BtnColor.blue.color : Color.clear, lineWidth: 2)
                                                    .frame(width: 31, height: 31)
                                            )
                                    }
                                }
                            }
                        }
                        .padding(.bottom, 20)
                        
                        Button (action: {}) {
                            HStack {
                                Text("AR로 보기")
                                Image(systemName: "arkit")
                            }
                        }
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
