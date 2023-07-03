//
//  ContentArea.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/26.
//

import SwiftUI

struct ContentArea: View {
    var body: some View {
        ScrollView {
            VStack(spacing:20) {
                imageLayout(imageTitle: "ImgContentL01", overlayAlignment: .top, leadingOffset: 0, topOffset: 40) {
                    Group{
                        Text("채드도 놀란")
                            .font(.system(size: 20))
                        Text("iPhone 14 Pro")
                            .font(.system(size: 30))
                    }
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorFontWhite"))
                }
                
                
                imageLayout(imageTitle: "ImgContentL02", overlayAlignment: .top, leadingOffset: 0, topOffset: 40) {
                    Text("Dynamic Island")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color("ColorFontGray"))
                    
                    Text("iPhone을 다루는 완전히 \n새로운 방법.")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorFontGray"))
                        .multilineTextAlignment(.center)
                        .offset(y:40)
                }
                
                imageLayout(imageTitle: "ImgContentSm01", overlayAlignment: .topLeading, leadingOffset: 0, topOffset: 40) {
                    Text("그 모든걸\n가능케 하는\n브레인.")
                        .customLinearGradient(fontSize: 22)
                        .offset(x:37, y:40)
                }
                
                imageLayout(imageTitle: "ImgContentSm02", overlayAlignment: .center, leadingOffset: 0, topOffset: 40) {
                    Text("오래 가는 배터리")
                        .customLinearGradient(fontSize: 22)
                    Text("온종일,")
                        .customLinearGradient(fontSize: 54)
                    Text("올인.")
                        .customLinearGradient(fontSize: 54)
                }
                
                
                imageLayout(imageTitle: "ImgContentL03", overlayAlignment: .top, leadingOffset: 0, topOffset: 42){
                    Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                        .customLinearGradient(fontSize: 24)                                        .multilineTextAlignment(.center)
                }
                
                
                imageLayout(imageTitle: "ImgContentL04", overlayAlignment: .top, leadingOffset: 0, topOffset: 42){
                    Text("Ceramic Shield")
                        .font(.system(size: 20))
                        .foregroundColor(Color("ColorFontGray"))
                    Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                        .customLinearGradient(fontSize: 24)
                }
            }.padding(.horizontal, 20)
        }
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
