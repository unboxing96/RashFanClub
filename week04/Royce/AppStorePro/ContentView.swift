//
//  ContentView.swift
//  AppStorePro
//
//  Created by Jin Sang woo on 2023/06/20.
//

import SwiftUI


struct OutsideColorPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}


struct ContentView: View {
    
    @State private var isNavigationBarHidden = false
    @State private var scrollViewOffset: CGFloat = 0
    
    
    var body: some View {
        
        
        NavigationView{
            ScrollViewReader{ proxy in
                
                ScrollView(){
                    
                    VStack(spacing : 20){
                        proFirst()
                            .padding(.bottom, -20)
                        
                        
                        VStack(spacing : 0){
                            
                            ZStack(alignment : .top){
                                
                                // 처음
                                Image("ImgContentL01")
                                    .resizable()
                                    .frame(width:353, height:436)
                                
                                VStack(){
                                    Text("채드도 놀란")
                                        .bold()
                                        .font(.system(size : 20))
                                        .foregroundColor(Color.white)
                                    Spacer().frame(height: 4)
                                    
                                    Text("Iphone 14 Pro")
                                        .bold()
                                        .font(.system(size : 30))
                                        .foregroundColor(Color.white)
                                }
                                .padding(.top, 40)
                                .padding(.leading, 9)
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            
                            
                            // 두번째
                            ZStack(alignment : .top){
                                
                                Image("ImgContentL02")
                                    .resizable()
                                    .frame(width:353, height:446)
                                
                                VStack(spacing : 4){
                                    Text("Dynamic Island")
                                        .bold()
                                        .font(.system(size : 20))
                                        .foregroundColor(Color("ColorFontGray"))
                                    
                                    
                                    
                                    Text("iPhone을 다루는 완전히\n 새로운 방법.")
                                        .bold()
                                        .font(.system(size : 24))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color("ColorFontGray"))
                                }
                                .padding(.top, 40)
                                .padding(.leading, 9)
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            //
                            
                            ZStack(alignment : .topLeading){
                                
                                Image("ImgContentSm01")
                                    .resizable()
                                    .frame(width:353, height:324)
                                
                                VStack(){
                                    Text("그 모든걸\n가능케 하는\n브레인.")
                                        .bold()
                                        .font(.system(size : 24))
                                        .foregroundStyle(LinearGradient(
                                            colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                            startPoint: .top, endPoint: .bottom))
                                }
                                .padding(.top, 40)
                                .padding(.leading, 37)
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            
                            ZStack(alignment : .top){
                                
                                Image("ImgContentSm02")
                                    .resizable()
                                    .frame(width:353, height:324)
                                
                                VStack(){
                                    Text("오래 가는 배터리")
                                        .bold()
                                        .font(.system(size : 22))
                                        .foregroundStyle(LinearGradient(
                                            colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                            startPoint: .top, endPoint: .bottom))
                                    Spacer().frame(height: 14)
                                    
                                    Text("온종일,")
                                        .bold()
                                        .font(.system(size : 54))
                                        .lineSpacing(64)
                                        .foregroundStyle(LinearGradient(
                                            colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                            startPoint: .top, endPoint: .bottom))
                                    
                                    Spacer().frame(height: 5)
                                    
                                    
                                    Text("올인.")
                                        .bold()
                                        .font(.system(size : 54))
                                        .foregroundStyle(LinearGradient(
                                            colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                            startPoint: .top, endPoint: .bottom))
                                }
                                .padding(.top, 75)
                                .padding(.leading, 9)
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            
                            
                            ZStack(alignment : .top){
                                
                                Image("ImgContentL03")
                                    .resizable()
                                    .frame(width:353, height:446)
                                
                                Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                                    .bold()
                                    .font(.system(size: 24))
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(LinearGradient(
                                        colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                        startPoint: .top, endPoint: .bottom))
                                    .padding(.top, 45)
                                    .padding(.leading, 9)
                                
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            
                            
                            ZStack(alignment : .top){
                                
                                Image("ImgContentL04")
                                    .resizable()
                                    .frame(width:353, height:446)
                                
                                VStack(spacing : 4){
                                    Text("Ceramic Shield")
                                        .bold()
                                        .font(.system(size : 20))
                                        .foregroundColor(Color("ColorFontGray"))
                                    Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                                        .bold()
                                        .font(.system(size : 30))
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(LinearGradient(
                                            colors: [Color("ColorFontPurple1"), Color("ColorFontPurple2")],
                                            startPoint: .top, endPoint: .bottom))
                                }
                                .padding(.top, 42)
                                .padding(.leading, 9)
                            }
                            .padding()
                            // 제목과 테두리 사이의 여백
                            .cornerRadius(20)
                            
                            
                            
                            
                        }
                        .padding()
                        .background(Color("ColorBgBlack"))
                        .padding(.bottom, -20)
                        
                        //                Spacer()
                        
                    }
                    .padding(.bottom, -20)
                    
                    
                    VStack(spacing : 20){
                        
                        
                        Rectangle()
                            .fill(Color("ColorBgWhite"))
                            .frame(width: 393, height: 173)
                            .overlay(
                                VStack(spacing : 10){
                                    Text("iPhone 14 Pro 더 깊이 살펴보기")
                                        .bold()
                                        .font(.system(size : 24))
                                        .foregroundColor(.black)
                                    
                                    Text("apple.com에서 더 알아보기")
                                        .font(.system(size : 12))
                                        .foregroundColor(Color("ColorBtnBlue"))
                                }
                            )
                        
                        
                        Rectangle()
                            .fill(Color("ColorBgWhite"))
                            .frame(width: 393, height: 538)
                            .overlay(
                                ZStack(alignment : .top){
                                    Image("ImgProduct01")
                                        .resizable()
                                    Text("iPhone 14 Pro")
                                        .bold()
                                        .font(.system(size: 26))
                                        .padding(.top, 60)
                                    
                                    RoundedRectangle(cornerRadius:20)
                                        .foregroundColor(Color("ColorBtnBlue"))
                                        .frame(width: 80, height: 25)
                                        .overlay(
                                            Text("구입하기")
                                                .foregroundColor(Color("ColorFontWhite"))
                                                .font(.system(size: 14, weight: .medium))
                                        )
                                        .padding(.top, 436)
                                    
                                    Text("₩ 1,550,000부터")
                                        .font(.system(size: 10))
                                        .padding(.top, 475)
                                }
                            )
                        
                        ZStack(alignment: .top){
                            Rectangle()
                                .fill(Color("ColorBgGray"))
                                .frame(width: 393, height: 182)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("ColorBgWhite"))
                                .frame(width: 128, height: 38)
                                .overlay(
                                    Text("\(Image(systemName: "square.and.arrow.up"))  공유하기")
                                        .bold()
                                        .foregroundColor(Color("ColorBtnBlue"))
                                        .font(.system(size: 14))
                                )
                            
                            Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
                                .font(.system(size: 10))
                                .foregroundColor(Color(UIColor(red: 0.55, green: 0.55, blue: 0.57, alpha: 1.0)))
                                .padding(.top, 138)
                                .padding(.leading, 10)
                            
                            
                        }
                        
                    }
                    .padding(20)
                    .background(Color("ColorBgGray"))
                    
                    
                    
                }
                .background(
                    ZStack(){
                        Color.black
                            .edgesIgnoringSafeArea(.top)
                        Color("ColorBgGray")
                            .edgesIgnoringSafeArea(.bottom)
                    }
//                        .onPreferenceChange(OutsideColorPreferenceKey.self) { offset in
//                            withAnimation {
//                                isNavigationBarHidden = offset > 70
//                            }
//                        }
                )
                .ignoresSafeArea()
                
            }
            .overlay(
                GeometryReader { geometry in
                    bottomNavBar()
                        .padding(.horizontal, 16)
                        .position(x: geometry.size.width / 2, y: geometry.size.height - 70)
                }
            )
//            .onPreferenceChange(OutsideColorPreferenceKey.self) { offset in
//                scrollViewOffset = offset
//            }
            .onAppear {
                NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: .main) { _ in
                    scrollViewOffset = 0
                }
            }
        }
        .navigationViewStyle(.stack)
        .onPreferenceChange(OutsideColorPreferenceKey.self) { offset in
            scrollViewOffset = offset
            print(scrollViewOffset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
