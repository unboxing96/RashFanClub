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
                .background(Color("ColorBgBlack"))
                // 스크롤 오프셋 값을 기록하기 위해 GeometryReader를 사용함.
                .background(GeometryReader { geometry in
                    Color.clear
                        // ScrollView의 스크롤 위치(origin)를 ScrollOffsetPreferenceKey로 저장함.
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                // 스크롤 위치가 변경될 때 마다, scrollPosition 상태를 업데이트함.
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollPosition = value
                }
            }
            // ScrollView의 좌표 공간을 "scroll"로 지정함.
            .coordinateSpace(name: "scroll")
            
            // 토스트 메세지가 활성화되어 있고 스크롤 위치가 -2500 이상일 때, ToastView를 표시함.
            if self.scrollPosition.y >= -2500 && self.showToast {
                ToastView()
                    // ToastView가 화면 바닥에서 위로 올라오는 효과를 줌.
                    .transition(.move(edge: .bottom))
                    // ToastView의 애니메이션을 설정함.
                    .animation(.spring(response: 0.5, dampingFraction: 0.4))
            }
        }
        // 배경색을 스크롤 위치에 따라 설정함. 스크롤 위치가 -500 이상일 경우, 배경색을 검은색으로 설정하고, 그렇지 않으면 회색으로 설정함.
        .background(scrollPosition.y >= -500 ? .black : Color("ColorBgGray"))
        // View가 화면에 표시되면 토스트 메세지를 표시하는 상태를 참으로 설정함. 딜레이는 0.5초임.
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
