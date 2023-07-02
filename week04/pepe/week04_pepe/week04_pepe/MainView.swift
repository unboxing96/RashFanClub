//
//  MainView.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//

import SwiftUI

struct MainView: View {
    // 스크롤 위치를 저장하는 상태 변수를 선언함. 초기 값은 CGPoint의 zero임.
    @State private var scrollPosition: CGPoint = .zero
    // 토스트 메세지 표시 여부를 저장하는 상태 변수를 선언함. 초기 값은 false임.
    @State private var showToast : Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            ScrollView {
                VStack (spacing: 20) {
                    MainArea()
                    ContentArea()
                        .padding(.horizontal, 20)
                    ProductArea()
                }
                .background {
                    BgColor.black.color
                    GeometryReader { geometry in
                        Color.clear
                            .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                    }
                }
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollPosition = value
                }
            }
            .coordinateSpace(name: "scroll")
            
            if self.scrollPosition.y >= -2500 && self.showToast {
                ToastView()
                    .transition(.move(edge: .bottom))
                    .animation(.spring(response: 0.5, dampingFraction: 0.4))
            }
        }
        .background(scrollPosition.y >= -500 ? BgColor.black.color : BgColor.gray.color)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.showToast = true
            }
        }
    }
}

// 스크롤 오프셋 값을 저장하기 위한 PreferenceKey를 정의함.
struct ScrollOffsetPreferenceKey: PreferenceKey {
    // 기본값은 CGPoint의 zero임.
    static var defaultValue: CGPoint = .zero
    // reduce 함수는 현재 무시함.
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
