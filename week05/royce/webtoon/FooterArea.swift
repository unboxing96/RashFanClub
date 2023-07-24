//
//  FooterArea.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/16.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        
        VStack(){
            
            ZStack(){
                Text("웹툰에서 제공되는 콘텐츠의 저작권은 저자 또는 제공처에 있으며,\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.")
                    .foregroundColor(Color("FontGray200"))
                    .font(.custom("Pretendard", size: 12))
                    .lineSpacing(5)
            }
            .frame(width: 393, height: 78)
            
            Rectangle()
                .frame(height : 1)
                .foregroundColor(Color("BgWhite300"))
            
            VStack(alignment: .center){
                
                Spacer(minLength: 40)
                
                HStack(){
                    Text("네이버웹툰 이용약관")
                        .font(.system(size : 10))
                        .foregroundColor(Color("FontGray100"))
                    Text(" | ")
                        .font(.system(size : 10))
                        .foregroundColor(Color("DividerGray"))
                    Text("전용상품권 이용약관")
                        .font(.system(size : 10))
                        .foregroundColor(Color("FontGray100"))
                    Text(" | ")
                        .font(.system(size : 10))
                        .foregroundColor(Color("DividerGray"))
                    Text("개인정보처리방침")
                        .font(.system(size : 10))
                        .foregroundColor(Color("FontGray200"))
                }
                
                Spacer(minLength: 6)
                
                HStack(){
                    Text("고객센터")
                        .font(.system(size : 10))
                        .foregroundColor(Color("FontGray100"))
                    Text(" | ")
                        .font(.system(size : 10))
                        .foregroundColor(Color("DividerGray"))
                    Text("오류신고")
                        .font(.system(size : 10))
                        .foregroundColor(Color("FontGray100"))
                    
                }
                
                Spacer(minLength: 11)
                
                Text("ⓒ NAVER WEBTOON Limited")
                    .font(.system(size : 8))
                    .foregroundColor(Color("FontGray100"))
                
                Spacer(minLength: 40)

                
            }
            .frame(width: 393, height: 131)
            .foregroundColor(Color("BgWhite200"))
        }
        
        
        
    }
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
