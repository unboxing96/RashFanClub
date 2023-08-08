//
//  FooterArea.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        VStack(spacing : 0){
                Text("웹툰에서 제공되는 콘텐츠의 저작권은 저자 또는 제공처에 있으며,\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color("FontGray200"))
                    .padding(.vertical, 20)
                    .padding(.leading, 15)
                    .background(Color("BgWhite200"))
                    .font(.system(size: 12))
            
            Divider()
            
            VStack(spacing: 0){
                HStack{
                    Text("네이버웹툰 이용약관")
                    Divider()
                        .frame(height: 8)
                    Text("전용상품권 이용약관")
                    Divider()
                        .frame(height: 8)
                    Text("개인정보처리방침")
                }
                .padding(.top, 40)
                .font(.system(size: 10))
                .foregroundColor(Color("FontGray100"))
                HStack{
                    Text("고색센터")
                    Divider()
                        .frame(height: 8)
                    Text("오류신고")
                }
                .padding(.top, 6)
                .font(.system(size: 10))
                .foregroundColor(Color("FontGray100"))
                
                
                Text("ⓒ NAVER WEBTOON Limited")
                    .padding(.top, 11)
                    .padding(.bottom, 40)
                    .font(.system(size: 8))
                    .foregroundColor(Color("FontGray100"))
            }
            .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
        .background(Color("BgWhite200"))
        .frame(maxWidth: .infinity)

    }
    
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
