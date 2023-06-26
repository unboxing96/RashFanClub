    //
    //  ContentArea.swift
    //  week04_pepe
    //
    //  Created by kimpepe on 2023/06/22.
    //  ContentArea: VStack { ZStack{ Image, Text } }

    import SwiftUI

    struct ContentArea: View {
        var body: some View {
//            VStack (spacing: 20){
            ScrollView {
                Image("ImgContentL01")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("채드도 놀란")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Text("iPhone 14 Pro")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.top, 40)
                        .foregroundColor(Color("ColorFontWhite"))
                }
                Image("ImgContentL02")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("Dynamic Island")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Text("iPhone을 다루는 완전히")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            Text("새로운 방법.")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.top, 40)
                        .foregroundColor(Color("ColorFontGray"))
                }
                Image("ImgContentSm01")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        HStack {
                            VStack {
                                Text("그 모든 걸\n가능케 하는\n브레인.")
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(.top, 40)
                        .padding(.leading, 40)
                        .foregroundStyle(LinearGradient(
                            colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                        ))
                }
                Image("ImgContentSm02")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("오래 가는 배터리")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundStyle(LinearGradient(
                                    colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                                ))
                            Text("온종일,")
                                .font(.system(size: 54))
                                .fontWeight(.bold)
                                .foregroundStyle(LinearGradient(
                                    colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                                ))
                            Text("올인.")
                                .font(.system(size: 54))
                                .fontWeight(.bold)
                                .foregroundStyle(LinearGradient(
                                    colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                                ))
                        }
                }
                Image("ImgContentL03")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                            Spacer()
                        }
                        .padding(.top, 40)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(LinearGradient(
                            colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                        ))                }
                Image("ImgContentL04")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text("Ceramic Shield")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color("ColorFontGray"))
                            Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(
                                    colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")], startPoint: .top, endPoint: .bottom
                                ))
                            Spacer()
                        }
                        .padding(.top, 40)
                        .foregroundColor(Color("ColorFontWhite"))
                }
            }
            .background(Color("ColorBgBlack"))
        }
    }

    struct ContentArea_Previews: PreviewProvider {
        static var previews: some View {
            ContentArea()
        }
    }
