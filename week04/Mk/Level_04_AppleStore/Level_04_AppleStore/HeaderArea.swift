//
//  Header.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/26.
//

import SwiftUI

struct ButtonInfos {
    var imageTitle : String
    var productColor : String
    var buttonColor : String
}

var buttonInfos =
[ ButtonInfos(imageTitle: "ImgMain01", productColor: "딥 퍼플", buttonColor: "ColorBtnDeepPurple"),
  ButtonInfos(imageTitle: "ImgMain02", productColor: "골드", buttonColor: "ColorBtnGold"),
  ButtonInfos(imageTitle: "ImgMain03", productColor: "실버", buttonColor: "ColorBtnSilver"),
  ButtonInfos(imageTitle: "ImgMain04", productColor: "스페이스 블랙", buttonColor: "ColorBtnBlack")
]

struct HeaderArea: View {
    @State var imgTitle = buttonInfos[0].imageTitle
    @State var productColor = buttonInfos[0].productColor
    @State var currentIndex : Int = 0
    
    var body: some View {
        VStack{
            Image("\(imgTitle)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .overlay(alignment:.bottom) {
                    VStack(spacing:14){
                        Text("\(buttonInfos[currentIndex].productColor)")
                            .foregroundColor(Color("ColorFontDarkGray"))
                            .font(.system(size: 10))
                        VStack(spacing:20){
                            HStack(spacing:15){
                                ForEach(0..<4) { index in
                                    Circle()
                                        .foregroundColor(Color(buttonInfos[index].buttonColor))
                                        .frame(width: 23, height:23)
                                        .overlay{
                                            Circle()
                                                .stroke(currentIndex == index ? Color("ColorBtnBlue"): Color(.clear), lineWidth: 1)
                                                .frame(width:31, height: 31)
                                        }
                                        .onTapGesture {
                                            currentIndex = index
                                            imgTitle = buttonInfos[currentIndex].imageTitle
                                        }
                                }
                            }
                            HStack {
                                Text("AR로 보기")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color("ColorBtnBlue"))
                                Image(systemName: "arkit")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color("ColorBtnBlue"))
                            }
                        }
                    }.offset(y:-30)
                    
                }
            
        }
        .overlay(alignment: .top){
            VStack{
                Text("iPhone 14 Pro")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Text("프로 그 이상.")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                .fontWeight(.bold)                                    }
            .offset(y:70)
        }
    }
}


struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
