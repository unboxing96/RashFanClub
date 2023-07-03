//
//  MainView.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//

import SwiftUI

struct MainView: View {
    @State private var scrollPosition: CGPoint = .zero
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
            
            if showToast && self.scrollPosition.y >= -2500 {
                ToastView()
                    .transition(.move(edge: .bottom))
                    .opacity(showToast ? 1.0 : 0.0)
            }
        }
        .background(scrollPosition.y >= -500 ? BgColor.black.color : BgColor.gray.color)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.4)) {
                    self.showToast = true
                }
            }
        }
        .onChange(of: scrollPosition.y) { value in
            withAnimation(.spring(response: 0.5, dampingFraction: 0.4)) {
                self.showToast = value >= -2460 ? true : false
            }
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
