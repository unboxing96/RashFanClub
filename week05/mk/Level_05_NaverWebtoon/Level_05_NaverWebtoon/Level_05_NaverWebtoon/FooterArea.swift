//
//  FooterArea.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        VStack {
            textLayout(text: "웹툰에서 제공되는 콘텐츠의 저작권은 저자 또는 제공처에 있으며,\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.", color: .fontGray200, fontSize: 12)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
                .padding(.vertical, 20)
            Divider()
                .foregroundColor(Color.dividerGray)
            VStack(spacing:6){
                HStack{
                    textLayout(text: "네이버웹툰 이용약관 | 전용상품권 이용약관 |", color: .fontGray100, fontSize: 10)
                    textLayout(text: "개인정보처리방침", color: .fontGray200, fontSize: 10)
                }
                HStack{
                    textLayout(text: "고객센터 | 오류신고", color: .fontGray100, fontSize: 10)
                }
                textLayout(text: "ⓒ NAVER WEBTOON Limited", color: .fontGray100, fontSize: 8)
                    .padding(.top, 6)
            }
            .padding(.vertical, 40)
        }
        .background(Color.bgWhite200)
    }
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
