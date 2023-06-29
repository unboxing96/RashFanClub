//
//  ProductArea.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/24.
//

import SwiftUI

struct ProductArea: View {
	@Binding var partOfProductAreaHeight : CGFloat
	
    var body: some View {
        VStack(spacing: 20) {
			
			
            Rectangle()
                .frame(maxWidth :  .infinity)
                .frame(height: 174)
                .foregroundColor(Color("ColorBgWhite"))
                .overlay(
                    VStack(spacing : 10) {
                        Text("iPhone 14 Pro 더 깊이 살펴보기")
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 24))
                            .fontWeight(.medium)
							.foregroundColor(Color("ColorFontBlack"))
						
                        Button {
                            print("버튼이 눌렸습니다.")
                        } label: {
                            Text("apple.com에서 더 알아보기")
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                        }
                    }
                )
				.background(
					GeometryReader { geo -> Color in
						DispatchQueue.main.async {
							partOfProductAreaHeight = geo.size.height + 20
						}
						return Color.clear
					}
				)
            
			
            imageLayout(imageTitle: "ImgProduct01", overlayAlignment: .center) {
                Text("iPhone 14 Pro")
                    .customTextStyle(fontSize: 26, fontWeight: .bold, fontColor: "ColorFontBlack", textAlignment: .center)
                    .padding(.top, 60)
                
                Spacer()
                
                Button {
                    print("버튼이 눌렸습니다.")
                } label: {
                    Text("구입하기")
                        .customTextStyle(fontSize: 14, fontWeight: .medium, fontColor: "ColorFontWhite", textAlignment: .center)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 14)
                        .background(Color("ColorBtnBlue"))
                        .cornerRadius(20)
                }
                .padding(.bottom, 14)
                
                Text("₩ 1,550,000부터")
                    .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "ColorFontBlack", textAlignment: .center)
                    .padding(.bottom, 50)
            }
        }
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
		ProductArea(partOfProductAreaHeight: .constant(30))
    }
}
