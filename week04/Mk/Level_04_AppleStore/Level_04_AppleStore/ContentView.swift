//
//  ContentView.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/13.
//

import SwiftUI

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value:inout CGPoint, nextValue:()->CGPoint){}
}

struct ContentView: View {
    
    @State var wholeViewHeight: CGFloat
    @State var productAreaHeight: CGFloat
    @State var footerAreaHeight: CGFloat
    @State var partOfProductAreaHeight: CGFloat
    
    @State private var scrollPosition: CGPoint = .zero
    @State private var bottomButtonOffset: Double = 200
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            ScrollView(){
                VStack(spacing:20) {
                    
                    VStack(spacing:20){
                        HeaderArea()
                        
                        ContentArea()
                    }.background(Color("ColorBgBlack"))
                    //HeaderArea, ContentArea
                    
                    VStack{
                        //각 Area의 높이를 구하기 위해 해당 부분에 투명한 배경을 적용시키고, 그 배경의 높이를 구합니다.
                        ProductArea(partOfProductAreaHeight: $partOfProductAreaHeight)
                            .background(
                                GeometryReader {geo -> Color in
                                    DispatchQueue.main.async{
                                        productAreaHeight = geo.size.height
                                    }
                                    return Color.clear
                                }
                            )
                        FooterArea()
                            .background(
                                GeometryReader {geo -> Color in
                                    DispatchQueue.main.async{
                                        footerAreaHeight = geo.size.height
                                    }
                                    return Color.clear
                                }
                            )
                    }//ProductArea, FooterArea
                }//WholeView
                .background(Color("ColorBgGray"))
                    .background(
                        GeometryReader {geo -> Color in
                            DispatchQueue.main.async{
                                wholeViewHeight = geo.size.height
                            }
                            return Color.clear
                        }
                    )
                    .background(GeometryReader{geometry in
                        Color.clear
                            .preference(key:ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("Scroll")).origin)
                    })
                //현재 스크롤 위치값을 설정해둔 높이와 비교하여 bottomButton이 사라지게 합니다.
                    .onPreferenceChange(ScrollOffsetPreferenceKey.self){value in
                        self.scrollPosition = value
                        
                        //                        print(scrollPosition.y - UIScreen.main.bounds.height)
                        if (scrollPosition.y - UIScreen.main.bounds.height) > -(wholeViewHeight - ((productAreaHeight + footerAreaHeight)-partOfProductAreaHeight)){
                            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)){
                                bottomButtonOffset = -70
                            }
                        }else {
                            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)){
                                bottomButtonOffset = 200
                            }
                        }
                    }//ScrollView End
            } //ZStack End
            .background(
                VStack(spacing:0){
                    Color(.black)
                    Color("ColorBgGray")
                }
            )
            BottomButton()
                .offset(y: bottomButtonOffset)
        }//Z
        .ignoresSafeArea()
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)){
                    bottomButtonOffset = -70
                }
            }
        }
    }
    
    
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(wholeViewHeight: 30, productAreaHeight: 30, footerAreaHeight: 30, partOfProductAreaHeight: 30)
    }
}








