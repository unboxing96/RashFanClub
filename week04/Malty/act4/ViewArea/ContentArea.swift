//
//  ContentAreaL.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/15.
//

import SwiftUI

struct ContentArea: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){

                // MARK: - 채드도 놀란
                imageLayout(imageTitle: "ImgContentL01", overlayAlignment: .top) {
                    Text("채드도 놀란")
                        .customTextStyle(fontSize: 20, fontWeight: .bold, fontColor: "ColorFontWhite", textAlignment: .center)
						.padding(.top, 40)
					
                    
                    Text("iPhone 14 Pro")
                        .customTextStyle(fontSize: 30, fontWeight: .bold, fontColor: "ColorFontWhite", textAlignment: .center)
                }
                
				
				
				
                // MARK: - Dynamic Island
                imageLayout(imageTitle: "ImgContentL02", overlayAlignment: .top) {
                    Text("Dynamic Island")
                        .customTextStyle(fontSize: 20, fontWeight: .medium, fontColor: "ColorFontGray", textAlignment: .center)
                        .padding(.top, 40)
                    
                    Text("iPhone을 다루는 완전히\n새로운 방법.")
                        .customTextStyle(fontSize: 24, fontWeight: .bold, fontColor: "ColorFontWhite", textAlignment: .center)
                }
                
				
				
				
                // MARK: - 그 모든걸 가능케 하는 브레인
                imageLayout(imageTitle: "ImgContentSm01", overlayAlignment: .topLeading) {
                    Text("그 모든걸\n가능케 하는\n브레인.")
                        .customLinear(fontSize: 22, fontWeight: .bold, textAlignment: .leading)
                        .padding(EdgeInsets(top: 40, leading: 37, bottom: 0, trailing: 0))
                }
                
                
				
				
                // MARK: - 오래가는 배터리
                imageLayout(imageTitle: "ImgContentSm02", overlayAlignment: .center) {
                    Text("오래 가는 배터리")
                        .customLinear(fontSize: 22, fontWeight: .bold, textAlignment: .center)
                    
                    Text("온종일,")
                        .customLinear(fontSize: 54, fontWeight: .bold, textAlignment: .center)
                    
                    Text("올인.")
                        .customLinear(fontSize: 54, fontWeight: .bold, textAlignment: .center)
                }
                
                
				
				// MARK: - 상시표시형 디스플레이
                imageLayout(imageTitle: "ImgContentL03", overlayAlignment: .top) {
                    Text("상시표시형 디스플레이. \n잠긴 동안에도 \n잠드는 법 없이.")
                        .customLinear(fontSize: 22, fontWeight: .bold, textAlignment: .center)
                        .padding(.top, 40)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
