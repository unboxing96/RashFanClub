//
//  MainArea.swift
//  Rash
//
//  Created by 김다빈 on 2023/06/23.
//

import SwiftUI

struct MainArea: View {
    @Binding var SelectColor: String
    var body: some View {
        ZStack{
            switch SelectColor{
            case "purple":
                Image("ImgMain01")
                    .resizable()
                    .frame(height: 600)
                Text("딥 퍼플")
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontGray"))
            case "gold":
                Image("ImgMain02")
                    .resizable()
                    .frame(height: 600)
                Text("골드")
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontGray"))
            case "silver":
                Image("ImgMain03")
                    .resizable()
                    .frame(height: 600)
                Text("실버")
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontGray"))
            case "spaceBlack":
                Image("ImgMain04")
                    .resizable()
                    .frame(height: 600)
                Text("스페이스 블랙")
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontGray"))
            default:
                Image("ImgeMain01")
                    .resizable()
                    .frame(height: 600)
                Text("딥 퍼플")
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontGray"))
            }
            VStack(alignment:.center){
                Text("iPhone 14 Pro")
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(Color("ColorFontWhite"))
                Text("프로 그 이상.")
                    .font(.system(size: 40,weight: .bold))
                    .foregroundColor(Color("ColorFontWhite"))
                    .padding(.bottom,390)
                
                HStack(spacing: 15){
                    Circle()
                        .strokeBorder(SelectColor == "purple" ? Color("ColorBtnBlue"): Color.clear)
                        .frame(width: 23,height: 23)
                        .background(Circle().foregroundColor(Color("ColorBtnDeepPurple")))
                        .onTapGesture {
                            SelectColor = "purple"
                        }
                    Circle()
                        .strokeBorder(SelectColor == "gold" ? Color("ColorBtnBlue"): Color.clear)
                        .frame(width: 23,height: 23)
                        .background(Circle().foregroundColor(Color("ColorBtnGold")))
                        .onTapGesture {
                            SelectColor = "gold"
                        }
                    Circle()
                        .stroke(SelectColor == "silver" ? Color("ColorBtnBlue"): Color.clear)
                        .frame(width: 23,height: 23)
                        .background(Circle().foregroundColor(Color("ColorBtnSilver")))
                        .onTapGesture {
                            SelectColor = "silver"
                        }
                    Circle()
                        .stroke(SelectColor == "spaceBlack" ? Color("ColorBtnBlue"): Color.clear)
                        .frame(width: 23,height: 23)
                        .background(Circle().foregroundColor(Color("ColorBtnBlack")))
                        .onTapGesture {
                            SelectColor = "spaceBlack"
                        }
                    
                }
                Text("AR로 보기 \(Image(systemName: "arkit"))")
                    .font(.system(size: 14))
                    .foregroundColor(Color("ColorBtnBlue"))
            }
            
        }
        .background(Color("ColorBgBlack"))
        .ignoresSafeArea()
        .frame(maxWidth: .infinity)
        .frame(height: 600 )
    }
      
}

struct MainArea_Previews: PreviewProvider {
    static var previews: some View {
        MainArea(SelectColor: .constant("purple"))
    }
}
