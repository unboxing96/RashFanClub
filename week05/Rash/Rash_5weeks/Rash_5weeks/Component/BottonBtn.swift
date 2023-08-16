//
//  BottonBtn.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import SwiftUI

struct BottonBtn: View {
    var body: some View {
        HStack{
            Text(.init(systemName: "questionmark.circle.fill"))
                .foregroundColor(icon.iconGreen.colorName)
                .font(.system(size: 20))
            Text("랜덤 작품")
                .foregroundColor(colorFont.fontBlack.colorName)
                .font(.system(size: 16))
                .bold()
            Text("보러 가기")
                .foregroundColor(colorFont.fontBlack.colorName)
                .font(.system(size: 16))
            Text(.init(systemName: "chevron.right"))
                .font(.system(size: 14))
                .foregroundColor(colorFont.fontBlack.colorName)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(colorBg.bgWhite100.colorName)
        .onTapGesture {
            print("랜덤작품보러갑니다")
        }
    }
}

struct BottonBtn_Previews: PreviewProvider {
    static var previews: some View {
        BottonBtn()
    }
}
