//
//  Main.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct TestScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value:inout CGPoint, nextValue:()->CGPoint){}
}

struct Main: View {
    
    @State var wholeViewHeight: CGFloat
    @State var heightMalty: CGFloat
    @State var heightE: CGFloat
    
    @State private var scrollPosition: CGPoint = .zero
    
    @State var bottomButtonOffset: Double = 200
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(){
                VStack(spacing:0){
                    A()
                    B()
                    C()
                    D(heightMalty: $heightMalty)
                    E()
                        .background(
                            GeometryReader {geo -> Color in
                                DispatchQueue.main.async{
                                    heightE = geo.size.height
                                }
                                return Color.clear
                            }
                        )
                    
                }//WholeView
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
                        .preference(key:TestScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("Scroll")).origin)
                })
                .onPreferenceChange(TestScrollOffsetPreferenceKey.self){value in
                    self.scrollPosition = value
                    
                    if (scrollPosition.y - UIScreen.main.bounds.height) > -(wholeViewHeight - heightMalty - heightE){
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)){
                            bottomButtonOffset = -70
                        }
                    }else {
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)){
                            bottomButtonOffset = 200
                        }
                    }
                    
                }
            }
            
            .ignoresSafeArea()
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

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(wholeViewHeight: 1, heightMalty: 1, heightE: 1)
    }
}
