//
//  ContentArea.swift
//  Rash
//
//  Created by 김다빈 on 2023/06/23.
//

import SwiftUI

struct ContentArea: View {
    let gradientColors: [Color] = [Color("ColorFontPurple"),Color("ColorFontPurple2")]
    var body: some View {
        VStack(spacing: 20){
            ZStack{
                Image("ImgContentL01")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 446)
                VStack(alignment: .center, spacing: 0){
                    Text("채드도 놀란")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 20))
                        .bold()
                        .padding(.bottom,4)
                    Text("iPhone 14 Pro")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 30))
                        .bold()
                        .padding(.bottom,342)
                }
            }
            .padding(.top,20)
            .frame(maxWidth: .infinity)
            .frame(height: 446)
            
            ZStack{
                Image("ImgContentL02")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 446)
                VStack(alignment: .center,spacing: 0){
                    Text("Dynamic Island")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 20))
                        .padding(.bottom,4)
                    Text("iPhone을 다루는 완전히\n새로운 방법.")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 30,weight: .semibold))
                        .padding(.bottom,320)
                        .multilineTextAlignment(.center)
                }
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 446)
            
            ZStack{
                Image("ImgContentSm01")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 324)
                Text("그 모든걸\n가능케 하는\n브레인.")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 22,weight: .bold))
                    .padding(.bottom,194)
                    .padding(.trailing,209)
                    .foregroundStyle(
                        .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 324)
           
            ZStack{
                Image("ImgContentSm02")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 324)
                VStack(spacing: 0){
                    Text("오래 가는 배터리")
                        .font(.system(size: 22,weight: .bold))
                        .padding(.bottom,14)
                        .foregroundStyle(
                            .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                    Text("온종일,")
                        .font(.system(size: 54,weight: .bold))
                        .padding(.bottom,5)
                        .foregroundStyle(
                            .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                    Text("올인.")
                        .font(.system(size: 54,weight: .bold))
                        .padding(.bottom,76)
                        .foregroundStyle(
                            .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 324)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 324)
            
            ZStack{
                Image("ImgContentL03")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 446)
                VStack{
                    Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                        .font(.system(size: 24,weight: .bold))
                        .padding(.bottom,319)
                        .foregroundStyle(
                            .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 446)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 446)
            
            ZStack{
                Image("ImgContentL04")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 446)
                VStack(spacing: 0){
                    Text("Ceramic Shield")
                        .foregroundColor(Color("ColorFontWhite"))
                        .font(.system(size: 20))
                        .padding(.bottom,4)
                    Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                        .padding(.bottom,318)
                        .font(.system(size:24,weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(
                            .linearGradient(colors: gradientColors, startPoint: .top, endPoint: .bottom))
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 446)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 446)
           
        }
        .padding(.leading,20)
        .padding(.trailing,20)
        .background(Color("ColorBgBlack"))
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
