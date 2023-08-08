//
//  ButtonArea.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/16.
//

import SwiftUI

struct ButtonArea: View {
    var body: some View {
        
        HStack(){
            Image(systemName: "questionmark.circle.fill")
                .foregroundColor(Color("FontGreen"))
                .font(.system(size : 20))

            Text("랜덤 작품")
                .bold()
                .font(.system(size : 16))
                .foregroundColor(Color("FontBlack"))
            Text("보러가기")
                .font(.system(size : 16))
                .foregroundColor(Color("FontBlack"))


            Image(systemName: "chevron.right")
                .font(.system(size : 14))
                .foregroundColor(Color("FontBlack"))


        }
        .frame(width: 393, height : 56)
        .foregroundColor(Color("BgWhite100"))
        
        
    }
}

struct ButtonArea_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArea()
    }
}
