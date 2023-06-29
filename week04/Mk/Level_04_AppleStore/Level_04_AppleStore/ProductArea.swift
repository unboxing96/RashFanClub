//
//  ProductArea.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/26.
//

import SwiftUI

struct ProductArea: View {
    @Binding var partOfProductAreaHeight: CGFloat
    var body: some View {
        
        
        VStack(spacing: 20){
            Rectangle()
                .foregroundColor(Color("ColorBgWhite"))
                .frame(maxWidth: .infinity)
                .frame(height: 173)
                .overlay(alignment:.center){
                    VStack{
                        Text("iPhone 14 Pro 더 깊이 살펴보기")
                            .font(.system(size: 24))
                            .foregroundColor(Color("ColorFontBlack"))
                            .fontWeight(.medium)
                        Text("apple.com에서 더 알아보기")
                            .font(.system(size: 12))
                            .foregroundColor(Color("ColorBtnBlue"))
                    }
                }
                .background(
                    GeometryReader {geo -> Color in
                        DispatchQueue.main.async{
                            partOfProductAreaHeight = geo.size.height
                        }
                        return Color.clear
                    }
                )
            
            imageLayout(imageTitle: "ImgProduct01", overlayAlignment: .top, leadingOffset: 0, topOffset: 0) {
                Text("iPhone 14 Pro")
                    .font(.system(size: 26))
                    .foregroundColor(Color("ColorFontBlack"))
                    .fontWeight(.bold)
                    .padding(.top, 60)
                
                Spacer()
                
                Button {
                    print("구입하기")
                } label: {
                    Text("구입하기")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                }
                .padding(EdgeInsets(top: 5, leading: 14, bottom: 3, trailing: 14))
                .background(Color("ColorBtnBlue"))
                .cornerRadius(20)
                
                Text("₩ 1,550,000부터")
                    .padding(.bottom, 50)
                    .font(.system(size: 10))
            }
        }
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea(partOfProductAreaHeight: .constant(30))
    }
}
