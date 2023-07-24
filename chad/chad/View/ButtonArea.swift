//
//  ButtonArea.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct ButtonArea: View {
    var body: some View {
        HStack{
            Image(systemName: "questionmark.circle.fill")
                .resizable()
                .foregroundColor(Color("IconGreen"))
                .frame(width:24, height: 24)
            Text("랜덤 작품")
                .font(.system(size: 16))
                .bold()
            +
            Text( "보러가기")
                .font(.system(size: 16))
            
            Image(systemName: "chevron.right")
                .resizable()
                .foregroundColor(Color("FontBlack"))
                .frame(width:7, height: 10)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        
    }
}

struct ButtonArea_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArea()
    }
}
