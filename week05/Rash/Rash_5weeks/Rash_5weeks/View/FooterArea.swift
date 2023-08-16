//
//  FooterArea.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        VStack(alignment: .center,spacing: 0){
            Text("웹툰에서 제공되는 콘텐츠의 저작권은 저자 또는 제공처에 있으며.\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.")
                .font(.system(size: 12))
                .foregroundColor(colorFont.fontGray200.colorName)
                .padding(.top,20)
            Divider()
                .frame(height: 0.5)
                .foregroundColor(colorDvider.dividerGray.colorName)
                .padding(.top,20)
            
            HStack{
                Text("네이버웹툰 이용약관")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray100.colorName)
                Divider()
                    .frame(height: 8)
                Text("이용상품권 이용약관")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray100.colorName)
                Divider()
                    .frame(height: 8)
                Text("개인정보처리방침")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray200.colorName)
            }
            .padding(.top,20)
            .padding(.bottom,6)
            HStack{
                Text("고색센터")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray100.colorName)
                Divider()
                    .frame(height: 8)
                Text("오류신고")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray100.colorName)
            }
            .padding(.bottom,6)
            HStack{
                Text("ⓒ NAVER WEBTOON Limited")
                    .font(.system(size: 10))
                    .foregroundColor(colorFont.fontGray100.colorName)
            }
            .padding(.bottom,40)
                
        }
        .background(colorBg.bgWhite200.colorName)
    }
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
