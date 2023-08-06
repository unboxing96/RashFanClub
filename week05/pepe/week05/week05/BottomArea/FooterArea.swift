//
//  FooterArea.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import Foundation
import SwiftUI

struct FooterArea: View {
    var body: some View {
        
        VStack(spacing: 0){
            policy()
            
            Divider()
            
            termsAndConditions()
        }
    }
}

private func verticalBar() -> some View {
    Rectangle()
        .frame(width: 0.7)
        .frame(height: 8)
        .foregroundColor(Color.FontGray100)
}

private func policy() -> some View {
    Text("웹툰에서 제공되는 콘텐ㄴ츠의 저작권은 저자 또는 제공처에 있으며,\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.")
        .font(.pretendard(size: 12, .regular))
        .padding(.leading, 15)
        .padding(.vertical, 20)
        .foregroundColor(Color.FontGray200)
        .lineSpacing(5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.BgWhite200)
}

private func termsAndConditions() -> some View {
    VStack(spacing: 6){
        
        HStack(spacing: 6){
            Text("네이버웹툰 이용약관")
                .font(.pretendard(size:10, .regular))
                .foregroundColor(Color.FontGray100)
            
            verticalBar()
            
            Text("전용상품권 이용약관")
                .font(.pretendard(size:10, .regular))
                .foregroundColor(Color.FontGray100)
            
            verticalBar()
            
            Text("개인정보처리방침")
                .font(.pretendard(size:10, .regular))
                .foregroundColor(Color.FontGray200)
        }
        
        HStack(spacing: 6){
            Text("고객센터")
                .font(.pretendard(size:10, .regular))
                .foregroundColor(Color.FontGray100)
            
            verticalBar()
            
            Text("오류신고")
                .font(.pretendard(size:10, .medium))
                .foregroundColor(Color.FontGray100)
        }
        
        HStack{
            Text("ⓒ NAVER WEBTOON Limited")
                .font(.pretendard(size: 8, .medium))
                .foregroundColor(Color.FontGray100)
        }
        .padding(.top, 5)
        
    }
    .padding(.vertical, 40)
    .frame(maxWidth: .infinity)
    .background(Color.BgWhite200)
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
