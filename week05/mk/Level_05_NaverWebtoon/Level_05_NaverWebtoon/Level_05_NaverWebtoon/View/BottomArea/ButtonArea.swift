//
//  ButtonArea.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct ButtonArea: View {
    var body: some View {
        HStack{
            systemImageLayout(image: .questionmarkCircleFill, color: .FontGreen, fontSize: 20)
            textLayout(text: "랜덤 작품", color: .FontBlack, fontSize: 16)
                .fontWeight(.bold)
            textLayout(text: "보러가기", color: .FontBlack, fontSize: 16)
            systemImageLayout(image: .chevronRight, color: .FontBlack, fontSize: 14)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(Color.BgWhite100)
    }
    
    
}

struct ButtonArea_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArea()
    }
}
