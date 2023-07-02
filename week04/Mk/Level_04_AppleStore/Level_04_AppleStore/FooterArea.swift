//
//  Footer.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/26.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        VStack(spacing: 0){
            
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 78)
                .foregroundColor(Color("ColorBgGray"))
                .overlay () {
                    Button {
                        print("공유하기")
                    } label: {
                        HStack(spacing:10) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                            
                            Text("공유하기")
                                .foregroundColor(Color("ColorBtnBlue"))
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                        }
                        .padding(EdgeInsets(top: 11, leading: 25, bottom: 10, trailing: 25))
                        .background(Color("ColorBgWhite"))
                        .cornerRadius(10)
                    }
                }
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 124)
                .foregroundColor(Color("ColorBgGray"))
                .overlay(alignment:.bottom) {
                    Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
                        .foregroundColor(Color("ColorFontDarkGray"))
                        .font(.system(size: 10))
                        .padding(.horizontal,10)
                        .padding(.bottom, 40)
                }
        }
    }
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
