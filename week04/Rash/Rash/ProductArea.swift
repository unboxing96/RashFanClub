//
//  ProductArea.swift
//  Rash
//
//  Created by 김다빈 on 2023/06/23.
//

import SwiftUI

struct ProductArea: View {
    @Binding var SelectColor: String
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 173)
                    .foregroundColor(Color("ColorBgWhite"))
                    VStack{
                        HStack{
                            Text("iPhone 14 Pro")
                                .font(.system(size: 24))
                            Text("더 깊이 살펴보기")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .padding(.bottom,10)
                        Text("apple.com에서 더 알아보기")
                            .font(.system(size: 12))
                            .foregroundColor(Color("ColorBtnBlue"))
                    }
                    
            }
            .padding(.top, 20)
            switch SelectColor{
                case "purple":
                    Image("productArea01")
                    .resizable()
                    .frame(height: 538)
                case "gold":
                    Image("productArea02")
                    .resizable()
                    .frame(width: .infinity)
                    .frame(height: 538)
                case "silver":
                    Image("productArea03")
                    .resizable()
                    .frame(width: .infinity)
                    .frame(height: 538)
                case "spaceBlack":
                    Image("productArea04")
                    .resizable()
                    .frame(width: .infinity)
                    .frame(height: 538)
                default:
                    Image("productArea01")
                    .resizable()
                    .frame(width: .infinity)
                    .frame(height: 538)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 128)
                    .frame(height: 38)
                    .foregroundColor(Color("ColorBgWhite"))
                Text("\(Image(systemName: "square.and.arrow.up"))  공유하기")
                    .foregroundColor(Color("ColorBtnBlue"))
                    .font(.system(size: 17,weight: .bold))
            }
            
            Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견\n하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정")
                .font(.system(size: 10))
                .foregroundColor(Color("ColorFontDarkGray"))
                .padding(.top, 70)
        }
        .background(Color("ColorBgGray"))
        .frame(maxWidth: .infinity)
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea(SelectColor: .constant("purple"))
    }
}
