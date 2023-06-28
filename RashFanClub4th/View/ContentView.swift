//
//  ContentView.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/14.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var dataModel: DataModel
    @ObservedObject var sizeModel : SizeModel
    
    @State private var isShowingToast = false
    @State private var animationToggle = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    // Main Top
                    MainArea(dataModel: DataModel(), viewModel: ViewModel(dataModel: DataModel()))
                    VStack(spacing : 20){
                        //채드도 놀란 iPhone14 Pro
                        ZStack{
                            Image("ImgContentL01")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.bigImageHeight)
                                .padding(.top, 20)
                            VStack(spacing: 0){
                                Text("채드도 놀란")
                                    .font(.system(size: 20))
                                    .padding(.top, 60)
                                    .padding(.bottom, 4)
                                    .fontWeight(.bold)
                                Text("iPhone 14 Pro")
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .fontWeight(.heavy)
                                Spacer()
                            }
                            .foregroundColor(Color("ColorFontWhite"))
                        }
                        
                        //Dynamic Island
                        ZStack{
                            Image("ImgContentL02")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.bigImageHeight)
                            
                            VStack(spacing: 0){
                                Text("Dynamic Island")
                                    .font(.system(size: 20))
                                    .padding(.top, 40)
                                    .padding(.bottom, 4)
                                Text("iPhone을 다루는 완전히\n새로운 방법.")
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                
                            }
                            .foregroundColor(Color("ColorFontWhite"))
                        }
                        
                        // A16칩
                        ZStack{
                            Image("ImgContentSm01")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.smallImageHeight)
                            VStack{
                                HStack{
                                    Text("그 모든걸\n가능케 하는\n브레인")
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                        .fontWeight(.heavy)
                                        .overlay(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            )
                                            .mask(
                                                Text("그 모든걸\n가능케 하는\n브레인")
                                                    .font(.system(size: 22))
                                                    .fontWeight(.bold)
                                                    .fontWeight(.heavy)
                                            )
                                        )
                                        .padding(.leading, 60)
                                    Spacer()
                                }
                                
                                Spacer()
                            }
                            .padding(.top, 40)
                        }
                        .foregroundColor(Color("ColorFontPurple"))
                        
                        
                        // Text만 있는곳 ("오래 가는 배터리 온종일 올인.")
                        ZStack{
                            Image("ImgContentSm02")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.smallImageHeight)
                            
                            VStack(spacing: 0){
                                Text("오래 가는 배터리")
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 14)
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                        .mask(
                                            Text("오래 가는 배터리")
                                                .padding(.bottom, 14)
                                                .font(.system(size: 22))
                                                .fontWeight(.bold)
                                        )
                                    )
                                Text("온종일,")
                                    .font(.system(size: 54))
                                    .fontWeight(.bold)
                                    .fontWeight(.heavy)
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                        .mask(
                                            Text("온종일,")
                                                .font(.system(size: 54))
                                                .fontWeight(.bold)
                                                .fontWeight(.heavy)
                                        )
                                    )
                                Text("올인.")
                                    .font(.system(size: 54))
                                    .fontWeight(.bold)
                                    .fontWeight(.heavy)
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                        .mask(
                                            Text("올인.")
                                                .font(.system(size: 54))
                                                .fontWeight(.bold)
                                                .fontWeight(.heavy)
                                        )
                                    )
                            }
                        }
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorFontPurple"))
                        
                        
                        // 상시 표시 디스플레이 ("상시표시형 디스플레이. 잠긴 동안에도 잠드는 법 없이")
                        ZStack{
                            Image("ImgContentL03")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.bigImageHeight)
                            
                            VStack(spacing: 0){
                                Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                                    .padding(.top, 40)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                        .mask(
                                            Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                                                .padding(.top, 40)
                                                .font(.system(size: 24))
                                                .fontWeight(.bold)
                                                .fontWeight(.heavy)
                                                .multilineTextAlignment(.center)
                                        )
                                    )
                                Spacer()
                            }
                            .foregroundColor(Color("ColorFontPurple"))
                        }
                        
                        // Ceramic Control 화면
                        ZStack{
                            Image("ImgContentL04")
                                .resizable()
                                .frame(width:sizeModel.imageWidth, height: sizeModel.bigImageHeight)
                            
                            VStack(spacing: 0){
                                Text("Ceramic Shield")
                                    .font(.system(size: 20))
                                    .padding(.top, 40)
                                    .padding(.bottom, 4)
                                Text("그 어떤 스마트폰 \n글래스보다 견고한 소재.")
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color("ColorFontPurple"))
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color("ColorFontPurple"), Color("ColorFontPurpleEnd")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                        .mask(
                                            Text("그 어떤 스마트폰 \n글래스보다 견고한 소재.")
                                                .font(.system(size: 24))
                                                .fontWeight(.bold)
                                                .fontWeight(.heavy)
                                                .multilineTextAlignment(.center)
                                        )
                                    )
                                Spacer()
                            }
                            .foregroundColor(Color("ColorFontWhite"))
                        }
                        .padding(.bottom, 0)
                    }
                    .background(Color("ColorBgBlack"))
                    ProductArea()
                }
                
                .background(GeometryReader { geometry in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    dataModel.scrollPosition = value
                }
            }
        }
        
        //뒷 배경
        .background(dataModel.scrollPosition.y > -3200 ? Color.black : Color("ColorBgGray"))
        .ignoresSafeArea()
        .coordinateSpace(name: "scroll")
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isShowingToast = true
            }
        })
        .overlay(
            VStack(spacing: 0){
                Spacer()
    // Toast
                if isShowingToast{
                    ToastView()
                        .opacity(dataModel.scrollPosition.y > -2570 ? 1 : 0)
                        .animation(.spring(response: 0.5, dampingFraction: 0.4))
                        .onAppear {
                            withAnimation {
                                animationToggle.toggle()
                            }
                        }
                        .padding(.bottom, animationToggle == true && dataModel.scrollPosition.y > -2570 ? 70 : -30)
                }
            }
        )
    }
}

//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataModel: DataModel(), sizeModel: SizeModel())
    }
}

//MARK: 위치값 잡아주는 함수
struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}


